import yaml
import json

with open('input.yml', 'r') as file:
    data = yaml.safe_load(file)

# for mod, tips in data.items():
#     for i, tip in enumerate(tips, start=1):
#         output = {
#             'title': {
#                 'text': mod
#             },
#             'tip': {
#                 'text': tip
#             }
#         }
#         with open(f'config/openloader/resources/tips/assets/tipsmod/tips/{mod}_{i}.json'.replace(' ','_'), 'w') as file:
#             json.dump(output, file, indent=4)

for mod, info in data.items():
    print(f"name: {mod}\ncolor:{info['color']}\ntips:{' '.join(info['tips'])}")
    tips = info['tips']
    for i, tip in enumerate(tips, start=1):
        output = {
            'title': {
                'text': mod,
                'bold': True,
                'color': info['color']
            },
            'tip': {
                'text': tip
            }
        }
        with open(f'config/openloader/resources/tips/assets/corn/tips/{mod}_{i}.json'.replace(' ','_'), 'w') as file:
            json.dump(output, file, indent=4)