.class public Lcom/graphhopper/config/LMProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private maximumLMWeight:D

.field private preparationProfile:Ljava/lang/String;

.field private profile:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    .line 3
    const-string v0, "this"

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 4
    iput-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/config/LMProfile;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    .line 7
    const-string v0, "this"

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    .line 9
    iget-object v0, p1, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    .line 11
    iget-wide v0, p1, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    iput-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    .line 14
    const-string v0, "this"

    iput-object v0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 15
    iput-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    .line 16
    invoke-virtual {p0, p1}, Lcom/graphhopper/config/LMProfile;->setProfile(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMaximumLMWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    return-wide v0
.end method

.method public getPreparationProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    return-object p0
.end method

.method public setMaximumLMWeight(D)Lcom/graphhopper/config/LMProfile;
    .locals 1
    .annotation runtime Lr5/i0;
        value = "maximum_lm_weight"
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Using non-default maximum_lm_weight and preparation_profile at the same time is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPreparationProfile(Ljava/lang/String;)Lcom/graphhopper/config/LMProfile;
    .locals 4

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Using non-default maximum_lm_weight and preparation_profile at the same time is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/config/LMProfile;->profile:Ljava/lang/String;

    iget-object v1, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    iget-wide v2, p0, Lcom/graphhopper/config/LMProfile;->maximumLMWeight:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|preparation_profile="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|maximum_lm_weight="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public usesOtherPreparation()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/config/LMProfile;->preparationProfile:Ljava/lang/String;

    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
