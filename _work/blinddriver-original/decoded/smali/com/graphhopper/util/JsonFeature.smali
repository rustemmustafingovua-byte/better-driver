.class public Lcom/graphhopper/util/JsonFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bbox:Lpb/h;

.field private geometry:Lpb/i;

.field private id:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Feature"

    iput-object v0, p0, Lcom/graphhopper/util/JsonFeature;->type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lpb/h;Lpb/i;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpb/h;",
            "Lpb/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/graphhopper/util/JsonFeature;->id:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/graphhopper/util/JsonFeature;->type:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/graphhopper/util/JsonFeature;->bbox:Lpb/h;

    .line 7
    iput-object p4, p0, Lcom/graphhopper/util/JsonFeature;->geometry:Lpb/i;

    .line 8
    iput-object p5, p0, Lcom/graphhopper/util/JsonFeature;->properties:Ljava/util/Map;

    return-void
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-le v0, v1, :cond_5

    const-string v0, "in_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljavax/lang/model/SourceVersion;->isKeyword(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_2

    if-lez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v2
.end method


# virtual methods
.method public getBBox()Lpb/h;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->bbox:Lpb/h;

    return-object p0
.end method

.method public getGeometry()Lpb/i;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->geometry:Lpb/i;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->properties:Ljava/util/Map;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->properties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/JsonFeature;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setBBox(Lpb/h;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/JsonFeature;->bbox:Lpb/h;

    return-void
.end method

.method public setGeometry(Lpb/i;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/JsonFeature;->geometry:Lpb/i;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/JsonFeature;->id:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/graphhopper/util/JsonFeature;->properties:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object v1

    invoke-virtual {v1}, Lpb/i;->x()[Lpb/a;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getGeometry()Lpb/i;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " points: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
