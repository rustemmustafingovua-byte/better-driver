.class public final Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;
.super Ljava/lang/Object;
.source "ApplicationInfoLoader.java"


# static fields
.field public static final NETWORK_POLICY_METADATA_KEY:Ljava/lang/String; = "io.flutter.network-policy"

.field public static final PUBLIC_AUTOMATICALLY_REGISTER_PLUGINS_METADATA_KEY:Ljava/lang/String; = "io.flutter.automatically-register-plugins"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 30
    nop

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 60
    if-nez p0, :cond_0

    .line 61
    return p2

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getNetworkPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 72
    .local v0, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return-object v1

    .line 76
    :cond_0
    const-string v2, "io.flutter.network-policy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 77
    .local v2, "networkSecurityConfigRes":I
    if-gtz v2, :cond_1

    .line 78
    return-object v1

    .line 81
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v4, "output":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 84
    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    .line 85
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    .line 86
    .local v6, "eventType":I
    :goto_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 87
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 88
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "domain-config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    invoke-static {v5, v4, v3}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    .line 92
    :cond_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    goto :goto_0

    .line 96
    .end local v5    # "xrp":Landroid/content/res/XmlResourceParser;
    .end local v6    # "eventType":I
    :cond_3
    nop

    .line 97
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 40
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStringWithFallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fallbackKey"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 47
    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "metadataString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    return-object v0
.end method

.method public static load(Landroid/content/Context;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;
    .locals 11
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 157
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 162
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v3, v3, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v4, v4, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 163
    invoke-static {v2, v3, v4}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getStringWithFallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lio/flutter/embedding/engine/FlutterEngineFlags;->VM_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v4, v4, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 167
    invoke-static {v3, v4}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lio/flutter/embedding/engine/FlutterEngineFlags;->ISOLATE_SNAPSHOT_DATA:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v5, v5, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 168
    invoke-static {v4, v5}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v6, v6, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    sget-object v7, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    iget-object v7, v7, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 169
    invoke-static {v5, v6, v7}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getStringWithFallback(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v0, p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getNetworkPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 175
    const-string v9, "io.flutter.automatically-register-plugins"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    invoke-direct/range {v1 .. v8}, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    return-object v1
.end method

.method private static parseDomain(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .locals 5
    .param p0, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p1, "output"    # Lorg/json/JSONArray;
    .param p2, "cleartextPermitted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 134
    const-string v0, "includeSubdomains"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, "includeSubDomains":Z
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 136
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 139
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "domain":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .local v2, "outputArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 142
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 143
    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 144
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    .line 146
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 149
    return-void

    .line 147
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Expected end of domain tag"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "outputArray":Lorg/json/JSONArray;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .locals 4
    .param p0, "xrp"    # Landroid/content/res/XmlResourceParser;
    .param p1, "output"    # Lorg/json/JSONArray;
    .param p2, "inheritedCleartextPermitted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    const-string v1, "cleartextTrafficPermitted"

    invoke-interface {p0, v0, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    .local v0, "cleartextTrafficPermitted":Z
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 108
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 109
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-static {p0, p1, v0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomain(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "domain-config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-static {p0, p1, v0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->parseDomainConfig(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/ApplicationInfoLoader;->skipTag(Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    .line 117
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 118
    nop

    .line 121
    .end local v1    # "eventType":I
    return-void

    .line 120
    :cond_3
    :goto_1
    goto :goto_0
.end method

.method private static skipTag(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p0, "xrp"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 124
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 126
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    return-void

    .line 127
    :cond_1
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0
.end method
