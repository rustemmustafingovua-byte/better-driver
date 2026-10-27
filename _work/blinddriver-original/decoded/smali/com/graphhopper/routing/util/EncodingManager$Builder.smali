.class public Lcom/graphhopper/routing/util/EncodingManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/EncodingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final edgeConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

.field private em:Lcom/graphhopper/routing/util/EncodingManager;

.field private final turnCostConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-direct {v0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->edgeConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    new-instance v0, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-direct {v0}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->turnCostConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    new-instance v0, Lcom/graphhopper/routing/util/EncodingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    return-void
.end method

.method private checkNotBuiltAlready()V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call method after Builder.build() was called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lcom/graphhopper/routing/ev/EncodedValue;)Lcom/graphhopper/routing/util/EncodingManager$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->checkNotBuiltAlready()V

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->hasTurnEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->edgeConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValue;->init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-static {v0}, Lcom/graphhopper/routing/util/EncodingManager;->g(Lcom/graphhopper/routing/util/EncodingManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Already defined as \'turn\'-EncodedValue: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EncodedValue already exists: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTurnCostEncodedValue(Lcom/graphhopper/routing/ev/EncodedValue;)Lcom/graphhopper/routing/util/EncodingManager$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->checkNotBuiltAlready()V

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->hasTurnEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->turnCostConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValue;->init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-static {v0}, Lcom/graphhopper/routing/util/EncodingManager;->h(Lcom/graphhopper/routing/util/EncodingManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Already defined as EncodedValue: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Already defined: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public build()Lcom/graphhopper/routing/util/EncodingManager;
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->checkNotBuiltAlready()V

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v1, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->edgeConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredBytes()I

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->i(Lcom/graphhopper/routing/util/EncodingManager;I)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v1, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->turnCostConfig:Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredInts()I

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->j(Lcom/graphhopper/routing/util/EncodingManager;I)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;->em:Lcom/graphhopper/routing/util/EncodingManager;

    return-object v0
.end method
