.class public final Lio/sentry/protocol/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/App$JsonKeys;,
        Lio/sentry/protocol/App$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "app"


# instance fields
.field private appBuild:Ljava/lang/String;

.field private appIdentifier:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appStartTime:Ljava/util/Date;

.field private appVersion:Ljava/lang/String;

.field private buildType:Ljava/lang/String;

.field private deviceAppHash:Ljava/lang/String;

.field private inForeground:Ljava/lang/Boolean;

.field private isSplitApks:Ljava/lang/Boolean;

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private splitNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startType:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private viewNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/App;)V
    .locals 1
    .param p1, "app"    # Lio/sentry/protocol/App;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v0, p1, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    .line 76
    iget-object v0, p1, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    .line 80
    iget-object v0, p1, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    .line 81
    iget-object v0, p1, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newArrayList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 82
    iget-object v0, p1, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p1, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    iput-object v0, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    .line 85
    iget-object v0, p1, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    .line 86
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/App;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/util/Date;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/App;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/App;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/App;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/App;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 202
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 203
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/sentry/protocol/App;

    .line 204
    .local v2, "app":Lio/sentry/protocol/App;
    iget-object v3, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iget-object v4, v2, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    .line 205
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    .line 206
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    .line 207
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    .line 208
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    .line 209
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    .line 210
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    iget-object v4, v2, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    .line 211
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    .line 212
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 213
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    iget-object v4, v2, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    .line 214
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    iget-object v4, v2, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    .line 215
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    iget-object v4, v2, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    .line 216
    invoke-static {v3, v4}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 204
    :goto_0
    return v0

    .line 202
    .end local v2    # "app":Lio/sentry/protocol/App;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAppBuild()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIdentifier()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppStartTime()Ljava/util/Date;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAppHash()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    return-object v0
.end method

.method public getInForeground()Ljava/lang/Boolean;
    .locals 1

    .line 158
    iget-object v0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    return-object v0
.end method

.method public getSplitApks()Ljava/lang/Boolean;
    .locals 1

    .line 184
    iget-object v0, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSplitNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    return-object v0
.end method

.method public getStartType()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getViewNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 13

    .line 221
    iget-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    iget-object v2, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    iget-object v3, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    iget-object v4, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    iget-object v6, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    iget-object v7, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    iget-object v8, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    iget-object v9, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    iget-object v10, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    iget-object v11, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    iget-object v12, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 270
    iget-object v0, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "app_identifier"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 273
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "app_start_time"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 276
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 277
    const-string v0, "device_app_hash"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 279
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 280
    const-string v0, "build_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 282
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 283
    const-string v0, "app_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 285
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 286
    const-string v0, "app_version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 288
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 289
    const-string v0, "app_build"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 291
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 292
    const-string v0, "permissions"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 294
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 295
    const-string v0, "in_foreground"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 297
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 298
    const-string v0, "view_names"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 300
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 301
    const-string v0, "start_type"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 303
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 304
    const-string v0, "is_split_apks"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 306
    :cond_b
    iget-object v0, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 307
    const-string v0, "split_names"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 309
    :cond_c
    iget-object v0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 310
    iget-object v0, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 312
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 313
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 315
    :cond_d
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 316
    return-void
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "appBuild"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lio/sentry/protocol/App;->appBuild:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setAppIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lio/sentry/protocol/App;->appIdentifier:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lio/sentry/protocol/App;->appName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setAppStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "appStartTime"    # Ljava/util/Date;

    .line 105
    iput-object p1, p0, Lio/sentry/protocol/App;->appStartTime:Ljava/util/Date;

    .line 106
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lio/sentry/protocol/App;->appVersion:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildType"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lio/sentry/protocol/App;->buildType:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setDeviceAppHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAppHash"    # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lio/sentry/protocol/App;->deviceAppHash:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setInForeground(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "inForeground"    # Ljava/lang/Boolean;

    .line 162
    iput-object p1, p0, Lio/sentry/protocol/App;->inForeground:Ljava/lang/Boolean;

    .line 163
    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "permissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/App;->permissions:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public setSplitApks(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "splitApks"    # Ljava/lang/Boolean;

    .line 188
    iput-object p1, p0, Lio/sentry/protocol/App;->isSplitApks:Ljava/lang/Boolean;

    .line 189
    return-void
.end method

.method public setSplitNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "splitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/App;->splitNames:Ljava/util/List;

    .line 197
    return-void
.end method

.method public setStartType(Ljava/lang/String;)V
    .locals 0
    .param p1, "startType"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lio/sentry/protocol/App;->startType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/App;->unknown:Ljava/util/Map;

    .line 248
    return-void
.end method

.method public setViewNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "viewNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/App;->viewNames:Ljava/util/List;

    .line 172
    return-void
.end method
