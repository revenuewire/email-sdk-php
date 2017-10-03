#!/bin/sh
# ref: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
#
# Usage example: /bin/sh ./git_push.sh wing328 swagger-petstore-perl "minor update"

git_user_id=$1
git_repo_id=$2
release_note=$3

if [ "$git_user_id" = "" ]; then
    git_user_id="revenuewire"
    echo "[INFO] No command line input provided. Set \$git_user_id to $git_user_id"
fi

if [ "$git_repo_id" = "" ]; then
    git_repo_id="email-sdk-php"
    echo "[INFO] No command line input provided. Set \$git_repo_id to $git_repo_id"
fi

if [ "$release_note" = "" ]; then
    release_note="Merge pull request #3 in MICRO/email from feature/email-service-2.0 to develop

Squashed commit of the following:

commit 6b78d5c6fb121f6ab7bded548cecf558ef50204d
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 09:48:11 2017 -0700

    clean up

commit e8f0ddde3b1b0e518cd336e63df1f89a1388119d
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 09:43:04 2017 -0700

    Email: read for develop

commit c3841d6826e47334f6eceefd2445de635e514c5c
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 09:20:39 2017 -0700

    Email: fix jenkins

commit 1110fa246f59dc3550f4b3cfe582e646655191ad
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 09:08:12 2017 -0700

    Email: fix unittest

commit 04bbc3ba2ee4c0adf8dd9cc56427512ceb2e83aa
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 09:00:29 2017 -0700

    Email: try rebuild

commit 0c72e848c1971ee49814eb40cae5e46a4d2f8fff
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Oct 3 08:23:46 2017 -0700

    Email: debug sandbox #1

commit f3547383c3c10256d484908a96c7e22b9039fdf3
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 15:37:42 2017 -0700

    Update cache 3

commit aec3be53f6ef0a24f2b8df5afb7b164e8d267172
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 15:29:48 2017 -0700

    Update cache 2

commit 29c80690672501eb1f8b1e8a03975aa62becfb7d
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 15:23:31 2017 -0700

    Update cache

commit 8c95d9ec35edc02d29ffaf53e7f6b2f46cd0888d
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 15:02:15 2017 -0700

    Sandbox: upgrade 5

commit 88452a7c8bf9f5af67d650643863581ace508073
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:57:37 2017 -0700

    Sandbox: upgrade 1

commit 67b3e57a96f9587738e7a3123f2ce3ebb4a6fb9d
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:55:34 2017 -0700

    Sandbox: upgrade

commit 90405568e488c5e7a8185ee4ed10b21e7c2f5355
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:51:11 2017 -0700

    Sandbox: upgrade

commit 8dd873de5054790cbb26dc5cd13fc4c0127bad46
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:45:08 2017 -0700

    Sandbox: configurations

commit 165353cbb7dcd8a43297e4bbb873f05ccf9c7f51
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:22:42 2017 -0700

    Sandbox build test 2

commit 827ff27ac56246d7a024e6f34faae22566e25365
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:05:22 2017 -0700

    Sandbox build test 1

commit 1f65d9b5a17174f4d65eff0b8ce1c4f28cdbdfe5
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 14:03:21 2017 -0700

    Sandbox build test

commit f4649b7cea5feb3608e4d8cfba2fb939179872d2
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 12:53:26 2017 -0700

    Email: update images/css and resources

commit 70bdb4aaefc9a298fc9f724eb7303893db76a425
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 12:15:02 2017 -0700

    Email: update images/css and resources

commit ec2f7bf1407d80f58ce74a0c1cacb61820e7c673
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Oct 2 09:47:20 2017 -0700

    Email: adding partials

commit a3e4f0f40084a395bfb424a614b75527c90d9965
Author: Scott Wang <scott@malloc.sh>
Date:   Fri Sep 29 11:02:35 2017 -0700

    Email: add test case for duplicated sending

commit f95b281758e28851d2804080bfb6f44c6e6f9d95
Author: Scott Wang <scott@malloc.sh>
Date:   Fri Sep 29 10:59:35 2017 -0700

    Email: adding lock for email send

commit 82b261a60bbe5adf2daccd6b6701fda1ee816eff
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 28 14:49:47 2017 -0700

    Email: revert back

commit e0aae0cc6dc74f86ed4b3ca609785bd87f3f0078
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 28 14:42:24 2017 -0700

    Email: trigger a fail

commit 4849afc0c79c62efa5c6e763c70e018bd39c3cd6
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 28 14:38:43 2017 -0700

    Email: update swagger

commit 4aaf5af17fbe0846ab3705f3fd3afcd2ff79a2f0
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 28 12:40:14 2017 -0700

    Email: add get public templates and get public resources

commit d5d4b2816842b2d604382de3422ba9b23821e8c6
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 28 11:23:37 2017 -0700

    Email: resource api

commit ef66841e875cf12ed8cfdcd4a4169e669ca79079
Author: Scott Wang <scott@malloc.sh>
Date:   Wed Sep 27 19:38:56 2017 -0700

    code converage

commit 301f357c089dd165d15ca1dea3baae7ad2bfe89a
Author: Scott Wang <scott@malloc.sh>
Date:   Wed Sep 27 19:04:06 2017 -0700

    commit what I have

commit ecc4b73043f4d001f6960cb147838356fd7422be
Author: Scott Wang <scott@malloc.sh>
Date:   Wed Sep 27 09:48:47 2017 -0700

    Email: update email sent

commit d8f71ef6b2fa15bb794eae271fa64c364a9002ef
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 15:10:28 2017 -0700

    update build

commit 95bc8d8aea1c360b2b4bc1571fb202a604022981
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 15:02:02 2017 -0700

    update docker build

commit 8a1a2dd5727efcdfda84556a3ebb3214893430f3
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 14:59:41 2017 -0700

    update docker to include build

commit 8fbdbfe4e34a8a05ab4e95b782311be184895459
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 14:57:51 2017 -0700

    update email

commit 3b4b4579fc4fab69e8332f2a3a61dca582f1d8e8
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 14:49:27 2017 -0700

    update

commit 4847452c15fa42dcf8180c4a7a82e3b59134fe77
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 13:30:15 2017 -0700

    Email: fix swagger error

commit 32e4cccfbe6d2119783958ee5576b93b157fe89a
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 13:28:21 2017 -0700

    Email: complete template api

commit 8157bfc5c881c0da5812f2165ac27df69f86d685
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 13:21:04 2017 -0700

    Email: complete template api

commit 373ea135ae579c1a348f992bf539cba1488d8392
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 12:40:36 2017 -0700

    Email: add content and get contents

commit 5ffb2e8b9a7ffad115fd4d6509a1913fe29e687c
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 26 09:11:13 2017 -0700

    Email: template finishes

commit 9fce0d59ce11cc57faf12a1ba96a102b2d30116d
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 16:20:02 2017 -0700

    updates

commit 3f56b161bec1b54cdf5ffb015c20579b76996970
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 12:31:10 2017 -0700

    SMP-9167: unit tests #1

commit a183a29fd1e301966e28a1b663a191615579db24
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 12:28:23 2017 -0700

    SMP-9167: unit tests

commit 7d7da8a7a077d445c68c4fe69621563ffd459179
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 11:15:41 2017 -0700

    SMP-9167: add enviroment for ci

commit 502f445a89ecdc71909a1ba413398e356baa131f
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 11:09:02 2017 -0700

    SMP-9167: add package.json

commit cf6af8aa76839ea9d7af27825433bb686be58497
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 11:07:51 2017 -0700

    SMP-9167: add npm packages conf

commit 75302916a4c9e63b777318b5df789815afcd8a58
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 11:03:30 2017 -0700

    SMP-9167: adding more unit tests

commit 94994d5c6be4a5a1dbad40d91f12f3647a7bfd9f
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:57:23 2017 -0700

    SMP-9167: try build #4

commit f97ff355247af61b368a732899667ba6fb73d0b9
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:51:50 2017 -0700

    SMP-9167: try build #3

commit 7ac48f725d29f6c1707dced391a3bfd6aede61f3
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:49:51 2017 -0700

    SMP-9167: try build #2

commit 592f229cdc3f802def2e486ffa5ce3963bf7cb35
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:49:03 2017 -0700

    SMP-9167: try build #1

commit 3b4d77e88fe89770afeb9a9c93376360de37d0f6
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:48:02 2017 -0700

    SMP-9167: try build

commit 671d1d4dd60cc84758258edd32b9c224629eebbd
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 10:25:55 2017 -0700

    Email try test

commit d3e4cdfbf08f081d072ce55537f8bc5aa5b4fb15
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 25 09:47:42 2017 -0700

    Email: save what I got

commit 17f5f7f4e34b971a7f88d1311f23bba407794124
Author: Scott Wang <scott@malloc.sh>
Date:   Fri Sep 22 10:22:51 2017 -0700

    create template

commit 5a202af72624e56aa447af66057fa6bc61078ad1
Author: Scott Wang <scott@malloc.sh>
Date:   Fri Sep 22 09:14:56 2017 -0700

    unit tests and continue template works

commit 95d0ae7a40ccf1fe70545cd7940557c4d97433a1
Author: Scott Wang <scott@malloc.sh>
Date:   Thu Sep 21 15:58:57 2017 -0700

    Email: structure updates

commit 0a9218232a2dbe73c928f293c5bbd6768ead4812
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 19 13:12:33 2017 -0700

    set up the unit tests

commit 151b25441d66bc80f99ee852f46beec6f8462940
Author: Scott Wang <scott@malloc.sh>
Date:   Tue Sep 19 12:08:32 2017 -0700

    Using kettle

commit 71f84f8b8530f692730f2fa1457eaa0fc65694f6
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 18 16:11:27 2017 -0700

    updat edb

commit 095203d40b2eed92e6d571558f7979bc1ef2bc23
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Sep 18 14:32:54 2017 -0700

    Init work

commit 927635e8ce095d542381d285217680b153dd3c0b
Author: Scott Wang <scott@malloc.sh>
Date:   Mon Aug 14 15:14:29 2017 -0700

    remove vendor files"
    echo "[INFO] No command line input provided. Set \$release_note to $release_note"
fi

# Initialize the local directory as a Git repository
git init

# Adds the files in the local repository and stages them for commit.
git add .

# Commits the tracked changes and prepares them to be pushed to a remote repository.
git commit -m "$release_note"

# Sets the new remote
git_remote=`git remote`
if [ "$git_remote" = "" ]; then # git remote not defined

    if [ "$GIT_TOKEN" = "" ]; then
        echo "[INFO] \$GIT_TOKEN (environment variable) is not set. Using the git crediential in your environment."
        git remote add origin https://github.com/${git_user_id}/${git_repo_id}.git
    else
        git remote add origin https://${git_user_id}:${GIT_TOKEN}@github.com/${git_user_id}/${git_repo_id}.git
    fi

fi

git pull origin master

# Pushes (Forces) the changes in the local repository up to the remote repository
echo "Git pushing to https://github.com/${git_user_id}/${git_repo_id}.git"
git push origin master 2>&1 | grep -v 'To https'

