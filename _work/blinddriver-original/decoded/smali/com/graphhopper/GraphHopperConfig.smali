.class public Lcom/graphhopper/GraphHopperConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;"
        }
    .end annotation
.end field

.field private copyrights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lmProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Lcom/graphhopper/util/PMap;

.field private profiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/graphhopper/GraphHopperConfig;-><init>(Lcom/graphhopper/util/PMap;)V

    .line 2
    iget-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    const-string v1, "GraphHopper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    const-string v0, "OpenStreetMap contributors"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/GraphHopperConfig;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    .line 9
    new-instance v0, Lcom/graphhopper/util/PMap;

    iget-object v1, p1, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-direct {v0, v1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    .line 10
    iget-object v0, p1, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    new-instance v1, Lcom/graphhopper/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/graphhopper/q;-><init>(Lcom/graphhopper/GraphHopperConfig;I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object v0, p1, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    new-instance v1, Lcom/graphhopper/q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/graphhopper/q;-><init>(Lcom/graphhopper/GraphHopperConfig;I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v0, p1, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    new-instance v1, Lcom/graphhopper/q;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/graphhopper/q;-><init>(Lcom/graphhopper/GraphHopperConfig;I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    iget-object p1, p1, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/PMap;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/LMProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->lambda$new$2(Lcom/graphhopper/config/LMProfile;)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/CHProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->lambda$new$1(Lcom/graphhopper/config/CHProfile;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/GraphHopperConfig;Lcom/graphhopper/config/Profile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopperConfig;->lambda$new$0(Lcom/graphhopper/config/Profile;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/graphhopper/config/Profile;)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    new-instance v0, Lcom/graphhopper/config/Profile;

    invoke-direct {v0, p1}, Lcom/graphhopper/config/Profile;-><init>(Lcom/graphhopper/config/Profile;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/graphhopper/config/CHProfile;)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    new-instance v0, Lcom/graphhopper/config/CHProfile;

    invoke-direct {v0, p1}, Lcom/graphhopper/config/CHProfile;-><init>(Lcom/graphhopper/config/CHProfile;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/graphhopper/config/LMProfile;)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    new-instance v0, Lcom/graphhopper/config/LMProfile;

    invoke-direct {v0, p1}, Lcom/graphhopper/config/LMProfile;-><init>(Lcom/graphhopper/config/LMProfile;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public asPMap()Lcom/graphhopper/util/PMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCHProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    return-object p0
.end method

.method public getCopyrights()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    return-object p0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLMProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    return-object p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GraphHopperConfig;
    .locals 1
    .annotation runtime Lr5/f;
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public setCHProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;)",
            "Lcom/graphhopper/GraphHopperConfig;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
        value = "profiles_ch"
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    return-object p0
.end method

.method public setCopyrights(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GraphHopperConfig;->copyrights:Ljava/util/List;

    return-void
.end method

.method public setLMProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;)",
            "Lcom/graphhopper/GraphHopperConfig;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
        value = "profiles_lm"
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    return-object p0
.end method

.method public setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopperConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;)",
            "Lcom/graphhopper/GraphHopperConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profiles:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopperConfig;->profiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/Profile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "profiles_ch:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/graphhopper/GraphHopperConfig;->chProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/CHProfile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "profiles_lm:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/graphhopper/GraphHopperConfig;->lmProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, "properties:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/graphhopper/GraphHopperConfig;->map:Lcom/graphhopper/util/PMap;

    invoke-virtual {p0}, Lcom/graphhopper/util/PMap;->toMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
