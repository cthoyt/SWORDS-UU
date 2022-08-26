#!/bin/bash

python -m swords.users.github_search.github_search --topic utrecht-university --search "utrecht university"
python -m swords.users.papers_with_code.papers_with_code --query utrecht+university
python -m swords.users.pure.pure
python -m swords.users.profile_pages.uu_api_crawler
python -m swords.usersmerge_users --files methods/*/results/*.csv --output results/users_merged.csv
python -m swords.usersenrich_users --input results/users_merged.csv
python -m swords.usersprepare_filtering
