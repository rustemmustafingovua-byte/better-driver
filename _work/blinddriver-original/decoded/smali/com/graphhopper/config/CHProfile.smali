.class public Lcom/graphhopper/config/CHProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private profile:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/config/CHProfile;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    iput-object p1, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lcom/graphhopper/config/CHProfile;->setProfile(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/config/CHProfile;

    iget-object p0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    iget-object p1, p1, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/CHProfile;->profile:Ljava/lang/String;

    return-object p0
.end method
