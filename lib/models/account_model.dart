// ignore_for_file: unnecessary_question_mark

class AccountModel {
    AccountModel({
        required this.login,
        required this.id,
        required this.nodeId,
        required this.avatarUrl,
        required this.gravatarId,
        required this.url,
        required this.htmlUrl,
        required this.followersUrl,
        required this.followingUrl,
        required this.gistsUrl,
        required this.starredUrl,
        required this.subscriptionsUrl,
        required this.organizationsUrl,
        required this.reposUrl,
        required this.eventsUrl,
        required this.receivedEventsUrl,
        required this.type,
        required this.siteAdmin,
        required this.name,
        required this.company,
        required this.blog,
        required this.location,
        required this.email,
        required this.hireable,
        required this.bio,
        required this.twitterUsername,
        required this.publicRepos,
        required this.publicGists,
        required this.followers,
        required this.following,
        required this.createdAt,
        required this.updatedAt,
    });

    final String? login;
    static const String loginKey = "login";
    
    final int? id;
    static const String idKey = "id";
    
    final String? nodeId;
    static const String nodeIdKey = "node_id";
    
    final String? avatarUrl;
    static const String avatarUrlKey = "avatar_url";
    
    final String? gravatarId;
    static const String gravatarIdKey = "gravatar_id";
    
    final String? url;
    static const String urlKey = "url";
    
    final String? htmlUrl;
    static const String htmlUrlKey = "html_url";
    
    final String? followersUrl;
    static const String followersUrlKey = "followers_url";
    
    final String? followingUrl;
    static const String followingUrlKey = "following_url";
    
    final String? gistsUrl;
    static const String gistsUrlKey = "gists_url";
    
    final String? starredUrl;
    static const String starredUrlKey = "starred_url";
    
    final String? subscriptionsUrl;
    static const String subscriptionsUrlKey = "subscriptions_url";
    
    final String? organizationsUrl;
    static const String organizationsUrlKey = "organizations_url";
    
    final String? reposUrl;
    static const String reposUrlKey = "repos_url";
    
    final String? eventsUrl;
    static const String eventsUrlKey = "events_url";
    
    final String? receivedEventsUrl;
    static const String receivedEventsUrlKey = "received_events_url";
    
    final String? type;
    static const String typeKey = "type";
    
    final bool? siteAdmin;
    static const String siteAdminKey = "site_admin";
    
    final String? name;
    static const String nameKey = "name";
    
    final dynamic company;
    static const String companyKey = "company";
    
    final String? blog;
    static const String blogKey = "blog";
    
    final dynamic location;
    static const String locationKey = "location";
    
    final dynamic email;
    static const String emailKey = "email";
    
    final dynamic hireable;
    static const String hireableKey = "hireable";
    
    final String? bio;
    static const String bioKey = "bio";
    
    final dynamic twitterUsername;
    static const String twitterUsernameKey = "twitter_username";
    
    final int? publicRepos;
    static const String publicReposKey = "public_repos";
    
    final int? publicGists;
    static const String publicGistsKey = "public_gists";
    
    final int? followers;
    static const String followersKey = "followers";
    
    final int? following;
    static const String followingKey = "following";
    
    final DateTime? createdAt;
    static const String createdAtKey = "created_at";
    
    final DateTime? updatedAt;
    static const String updatedAtKey = "updated_at";
    

    AccountModel copyWith({
        String? login,
        int? id,
        String? nodeId,
        String? avatarUrl,
        String? gravatarId,
        String? url,
        String? htmlUrl,
        String? followersUrl,
        String? followingUrl,
        String? gistsUrl,
        String? starredUrl,
        String? subscriptionsUrl,
        String? organizationsUrl,
        String? reposUrl,
        String? eventsUrl,
        String? receivedEventsUrl,
        String? type,
        bool? siteAdmin,
        String? name,
        dynamic? company,
        String? blog,
        dynamic? location,
        dynamic? email,
        dynamic? hireable,
        String? bio,
        dynamic? twitterUsername,
        int? publicRepos,
        int? publicGists,
        int? followers,
        int? following,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) {
        return AccountModel(
            login: login ?? this.login,
            id: id ?? this.id,
            nodeId: nodeId ?? this.nodeId,
            avatarUrl: avatarUrl ?? this.avatarUrl,
            gravatarId: gravatarId ?? this.gravatarId,
            url: url ?? this.url,
            htmlUrl: htmlUrl ?? this.htmlUrl,
            followersUrl: followersUrl ?? this.followersUrl,
            followingUrl: followingUrl ?? this.followingUrl,
            gistsUrl: gistsUrl ?? this.gistsUrl,
            starredUrl: starredUrl ?? this.starredUrl,
            subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
            organizationsUrl: organizationsUrl ?? this.organizationsUrl,
            reposUrl: reposUrl ?? this.reposUrl,
            eventsUrl: eventsUrl ?? this.eventsUrl,
            receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
            type: type ?? this.type,
            siteAdmin: siteAdmin ?? this.siteAdmin,
            name: name ?? this.name,
            company: company ?? this.company,
            blog: blog ?? this.blog,
            location: location ?? this.location,
            email: email ?? this.email,
            hireable: hireable ?? this.hireable,
            bio: bio ?? this.bio,
            twitterUsername: twitterUsername ?? this.twitterUsername,
            publicRepos: publicRepos ?? this.publicRepos,
            publicGists: publicGists ?? this.publicGists,
            followers: followers ?? this.followers,
            following: following ?? this.following,
            createdAt: createdAt ?? this.createdAt,
            updatedAt: updatedAt ?? this.updatedAt,
        );
    }

    factory AccountModel.fromJson(Map<String, dynamic> json){ 
        return AccountModel(
            login: json["login"],
            id: json["id"],
            nodeId: json["node_id"],
            avatarUrl: json["avatar_url"],
            gravatarId: json["gravatar_id"],
            url: json["url"],
            htmlUrl: json["html_url"],
            followersUrl: json["followers_url"],
            followingUrl: json["following_url"],
            gistsUrl: json["gists_url"],
            starredUrl: json["starred_url"],
            subscriptionsUrl: json["subscriptions_url"],
            organizationsUrl: json["organizations_url"],
            reposUrl: json["repos_url"],
            eventsUrl: json["events_url"],
            receivedEventsUrl: json["received_events_url"],
            type: json["type"],
            siteAdmin: json["site_admin"],
            name: json["name"],
            company: json["company"],
            blog: json["blog"],
            location: json["location"],
            email: json["email"],
            hireable: json["hireable"],
            bio: json["bio"],
            twitterUsername: json["twitter_username"],
            publicRepos: json["public_repos"],
            publicGists: json["public_gists"],
            followers: json["followers"],
            following: json["following"],
            createdAt: DateTime.tryParse(json["created_at"] ?? ""),
            updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
        );
    }

    Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "site_admin": siteAdmin,
        "name": name,
        "company": company,
        "blog": blog,
        "location": location,
        "email": email,
        "hireable": hireable,
        "bio": bio,
        "twitter_username": twitterUsername,
        "public_repos": publicRepos,
        "public_gists": publicGists,
        "followers": followers,
        "following": following,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };

    @override
    String toString(){
        return "$login, $id, $nodeId, $avatarUrl, $gravatarId, $url, $htmlUrl, $followersUrl, $followingUrl, $gistsUrl, $starredUrl, $subscriptionsUrl, $organizationsUrl, $reposUrl, $eventsUrl, $receivedEventsUrl, $type, $siteAdmin, $name, $company, $blog, $location, $email, $hireable, $bio, $twitterUsername, $publicRepos, $publicGists, $followers, $following, $createdAt, $updatedAt, ";
    }
}
