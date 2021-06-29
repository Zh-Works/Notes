import sys,os, subprocess

resources_long = subprocess.Popen("kubectl --context tlp-qa --namespace tlp-qa api-resources",
                    shell=True, stdout=subprocess.PIPE).stdout.read().decode().split('\n')

resources = [r.split()[0] for r in resources_long[1:] if r]

for resource in resources:
    resource_dir = f'{os.getcwd()}/kube-resources/{resource}/'
    os.makedirs(resource_dir, exist_ok=True)
    resource_objects_long = subprocess.Popen(f'kubectl --context tlp-qa --namespace tlp-qa get {resource}',
                    shell=True, stdout=subprocess.PIPE).stdout.read().decode().split('\n')
    resource_objects = [r.split()[0] for r in resource_objects_long[1:] if r]
    try:
        for resource_object in resource_objects:
            print(f'{resource}/{resource_object}')

            os.makedirs(f'{resource}/{resource_object}', exist_ok=True)
            with open(f'{resource}/{resource_object}', 'w') as f:
                print(f'kubectl --context tlp-qa --namespace tlp-qa get {resource} {resource_object} -o yaml')
                object_long = subprocess.Popen(f'kubectl --context tlp-qa '
                                            f'--namespace tlp-qa get {resource} {resource_object} -o yaml',
                                                shell=True, stdout=subprocess.PIPE).stdout.read().decode()
                f.write(object_long)
    except Exception as e:
        print(f'Failure in {resource}: {str(e)}')