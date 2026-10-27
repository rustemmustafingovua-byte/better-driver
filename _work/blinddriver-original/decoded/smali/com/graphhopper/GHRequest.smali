.class public Lcom/graphhopper/GHRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private algo:Ljava/lang/String;

.field private curbsides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customModel:Lcom/graphhopper/util/CustomModel;

.field private headings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final hints:Lcom/graphhopper/util/PMap;

.field private locale:Ljava/util/Locale;

.field private pathDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pointHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Ljava/lang/String;

.field private snapPreventions:Ljava/util/List;
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
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/graphhopper/GHRequest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    .line 12
    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    new-instance p1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/GHRequest;-><init>(Lcom/graphhopper/util/shapes/GHPoint;Lcom/graphhopper/util/shapes/GHPoint;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->profile:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->headings:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pointHints:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->curbsides:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->locale:Ljava/util/Locale;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/shapes/GHPoint;Lcom/graphhopper/util/shapes/GHPoint;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->profile:Ljava/lang/String;

    .line 15
    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->headings:Ljava/util/List;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pointHints:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->curbsides:Ljava/util/List;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'to\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'from\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->profile:Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->headings:Ljava/util/List;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pointHints:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->curbsides:Ljava/util/List;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/graphhopper/GHRequest;->locale:Ljava/util/Locale;

    .line 36
    iput-object p1, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    return-void
.end method

.method public static isAzimuthValue(D)Z
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addPoint(Lcom/graphhopper/util/shapes/GHPoint;)Lcom/graphhopper/GHRequest;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "point cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    return-object p0
.end method

.method public getCurbsides()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->curbsides:Ljava/util/List;

    return-object p0
.end method

.method public getCustomModel()Lcom/graphhopper/util/CustomModel;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->customModel:Lcom/graphhopper/util/CustomModel;

    return-object p0
.end method

.method public getHeadings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->headings:Ljava/util/List;

    return-object p0
.end method

.method public getHints()Lcom/graphhopper/util/PMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getPathDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    return-object p0
.end method

.method public getPointHints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->pointHints:Ljava/util/List;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    return-object p0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->profile:Ljava/lang/String;

    return-object p0
.end method

.method public getSnapPreventions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->snapPreventions:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public hasSnapPreventions()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->snapPreventions:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/GHRequest;
    .locals 1
    .annotation runtime Lr5/f;
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/graphhopper/GHRequest;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->camelCaseToUnderScore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setCurbsides(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->curbsides:Ljava/util/List;

    return-object p0
.end method

.method public setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/GHRequest;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->customModel:Lcom/graphhopper/util/CustomModel;

    return-object p0
.end method

.method public setHeadings(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->headings:Ljava/util/List;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/graphhopper/GHRequest;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/graphhopper/util/Helper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/GHRequest;->setLocale(Ljava/util/Locale;)Lcom/graphhopper/GHRequest;

    move-result-object p0

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/graphhopper/GHRequest;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/graphhopper/GHRequest;->locale:Ljava/util/Locale;

    :cond_0
    return-object p0
.end method

.method public setPathDetails(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
        value = "details"
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    return-object p0
.end method

.method public setPointHints(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->pointHints:Ljava/util/List;

    return-object p0
.end method

.method public setPoints(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Lcom/graphhopper/GHRequest;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->profile:Ljava/lang/String;

    return-object p0
.end method

.method public setSnapPreventions(Ljava/util/List;)Lcom/graphhopper/GHRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/GHRequest;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/GHRequest;->snapPreventions:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/GHRequest;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "; "

    invoke-static {v1, v3, v2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v2, ")"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/GHRequest;->algo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/GHRequest;->pathDetails:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (PathDetails: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    invoke-virtual {v0}, Lcom/graphhopper/util/PMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/graphhopper/GHRequest;->hints:Lcom/graphhopper/util/PMap;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Hints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method
