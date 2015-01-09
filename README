For provisioning a lamp server on Linode.

Explaination:

.
├── cookbooks       <---------- Cookbooks needed for this deployment (ops-code cookbooks not listed here)
│   site-cookbooks  <---------- Our custom cookbooks
│   ├── sitename    <---------- The sitename recipe namespace (lamp-node.rb)
│       ├── lamp-node.rb
├── deploy.sh       <---------- run "./deploy.sh [host]" to deploy
├── install.sh      <---------- this is run on the server to bootsrap and call chef-solo
├── README.md       <---------- This README file
├── solo.json       <---------- chef configuration
└── solo.rb         <---------- chef configuration

Run deploy.sh [host] to deploy the server
