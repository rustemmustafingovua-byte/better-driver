.class public final Lio/sentry/util/DebugMetaPropertiesApplier;
.super Ljava/lang/Object;
.source "DebugMetaPropertiesApplier.java"


# static fields
.field public static DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "sentry-debug-meta.properties"

    sput-object v0, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    if-eqz p1, :cond_0

    .line 20
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyToOptions(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 21
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyBuildTool(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 22
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyDistributionOptions(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 24
    :cond_0
    return-void
.end method

.method private static applyBuildTool(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 67
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getBuildTool(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "buildTool":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 69
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getBuildToolVersion(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "buildToolVersion":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 71
    const-string v0, "unknown"

    .line 73
    :cond_0
    nop

    .line 74
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v5

    .line 75
    const-string v6, "Build tool found: %s, version %s"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_1

    .line 80
    .end local v0    # "buildToolVersion":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "buildTool":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    :goto_1
    return-void
.end method

.method private static applyBundleIds(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 7
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 38
    .local v1, "properties":Ljava/util/Properties;
    const-string v2, "io.sentry.bundle-ids"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "bundleIdStrings":Ljava/lang/String;
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Bundle IDs found: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    if-eqz v2, :cond_0

    .line 41
    const-string v3, ","

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "bundleIds":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 43
    .local v6, "bundleId":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    .line 42
    .end local v6    # "bundleId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "bundleIdStrings":Ljava/lang/String;
    .end local v3    # "bundleIds":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method private static applyDistributionOptions(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 14
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 99
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getDistributionOrgSlug(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "orgSlug":Ljava/lang/String;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getDistributionProjectSlug(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "projectSlug":Ljava/lang/String;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getDistributionAuthToken(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "orgAuthToken":Ljava/lang/String;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getDistributionBuildConfiguration(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "buildConfiguration":Ljava/lang/String;
    nop

    .line 104
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getDistributionInstallGroupsOverride(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "installGroupsOverride":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    .line 171
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "orgSlug":Ljava/lang/String;
    .end local v3    # "projectSlug":Ljava/lang/String;
    .end local v4    # "orgAuthToken":Ljava/lang/String;
    .end local v5    # "buildConfiguration":Ljava/lang/String;
    .end local v6    # "installGroupsOverride":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 111
    .restart local v1    # "properties":Ljava/util/Properties;
    .restart local v2    # "orgSlug":Ljava/lang/String;
    .restart local v3    # "projectSlug":Ljava/lang/String;
    .restart local v4    # "orgAuthToken":Ljava/lang/String;
    .restart local v5    # "buildConfiguration":Ljava/lang/String;
    .restart local v6    # "installGroupsOverride":Ljava/lang/String;
    :cond_1
    :goto_1
    nop

    .line 112
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDistribution()Lio/sentry/SentryOptions$DistributionOptions;

    move-result-object v0

    .line 114
    .local v0, "distributionOptions":Lio/sentry/SentryOptions$DistributionOptions;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lio/sentry/SentryOptions$DistributionOptions;->orgSlug:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v9, "Distribution org slug found: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iput-object v2, v0, Lio/sentry/SentryOptions$DistributionOptions;->orgSlug:Ljava/lang/String;

    .line 119
    :cond_2
    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lio/sentry/SentryOptions$DistributionOptions;->projectSlug:Ljava/lang/String;

    .line 121
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 122
    nop

    .line 123
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    .line 124
    const-string v10, "Distribution project slug found: %s"

    invoke-interface {v7, v8, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iput-object v3, v0, Lio/sentry/SentryOptions$DistributionOptions;->projectSlug:Ljava/lang/String;

    .line 128
    :cond_3
    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lio/sentry/SentryOptions$DistributionOptions;->orgAuthToken:Ljava/lang/String;

    .line 130
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v10, "Distribution org auth token found"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iput-object v4, v0, Lio/sentry/SentryOptions$DistributionOptions;->orgAuthToken:Ljava/lang/String;

    .line 135
    :cond_4
    if-eqz v5, :cond_5

    .line 136
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lio/sentry/SentryOptions$DistributionOptions;->buildConfiguration:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 138
    nop

    .line 139
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v8

    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v10

    .line 140
    const-string v11, "Distribution build configuration found: %s"

    invoke-interface {v8, v9, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->buildConfiguration:Ljava/lang/String;

    .line 147
    :cond_5
    if-eqz v6, :cond_9

    .line 148
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v0, Lio/sentry/SentryOptions$DistributionOptions;->installGroupsOverride:Ljava/util/List;

    if-nez v8, :cond_9

    .line 150
    const-string v8, ","

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "groups":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v9, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v10, v8

    :goto_2
    if-ge v7, v10, :cond_7

    aget-object v11, v8, v7

    .line 153
    .local v11, "group":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "trimmedGroup":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 155
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v11    # "group":Ljava/lang/String;
    .end local v12    # "trimmedGroup":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 158
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 159
    nop

    .line 160
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v11

    .line 161
    const-string v12, "Distribution install groups override found: %s"

    invoke-interface {v7, v10, v12, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iput-object v9, v0, Lio/sentry/SentryOptions$DistributionOptions;->installGroupsOverride:Ljava/util/List;

    .line 165
    .end local v8    # "groups":[Ljava/lang/String;
    .end local v9    # "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    nop

    .line 172
    .end local v0    # "distributionOptions":Lio/sentry/SentryOptions$DistributionOptions;
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "orgSlug":Ljava/lang/String;
    .end local v3    # "projectSlug":Ljava/lang/String;
    .end local v4    # "orgAuthToken":Ljava/lang/String;
    .end local v5    # "buildConfiguration":Ljava/lang/String;
    .end local v6    # "installGroupsOverride":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private static applyProguardUuid(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    .line 54
    .local v1, "properties":Ljava/util/Properties;
    invoke-static {v1}, Lio/sentry/util/DebugMetaPropertiesApplier;->getProguardUuid(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "proguardUuid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Proguard UUID found: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 58
    goto :goto_1

    .line 60
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "proguardUuid":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-void
.end method

.method public static applyToOptions(Lio/sentry/SentryOptions;Ljava/util/List;)V
    .locals 0
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "debugMetaProperties":Ljava/util/List;, "Ljava/util/List<Ljava/util/Properties;>;"
    if-eqz p1, :cond_0

    .line 29
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyBundleIds(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 30
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyProguardUuid(Lio/sentry/SentryOptions;Ljava/util/List;)V

    .line 32
    :cond_0
    return-void
.end method

.method public static getBuildTool(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 88
    const-string v0, "io.sentry.build-tool"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildToolVersion(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 93
    const-string v0, "io.sentry.build-tool-version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDistributionAuthToken(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 186
    const-string v0, "io.sentry.distribution.auth-token"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDistributionBuildConfiguration(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 191
    const-string v0, "io.sentry.distribution.build-configuration"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDistributionInstallGroupsOverride(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 196
    const-string v0, "io.sentry.distribution.install-groups-override"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDistributionOrgSlug(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 176
    const-string v0, "io.sentry.distribution.org-slug"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDistributionProjectSlug(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 181
    const-string v0, "io.sentry.distribution.project-slug"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProguardUuid(Ljava/util/Properties;)Ljava/lang/String;
    .locals 1
    .param p0, "debugMetaProperties"    # Ljava/util/Properties;

    .line 84
    const-string v0, "io.sentry.ProguardUuids"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
