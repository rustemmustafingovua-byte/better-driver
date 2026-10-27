.class public Lcom/graphhopper/routing/lm/LMConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final profileName:Ljava/lang/String;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LMConfig;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

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
    check-cast p1, Lcom/graphhopper/routing/lm/LMConfig;

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    return-object p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMConfig;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMConfig;->profileName:Ljava/lang/String;

    return-object p0
.end method
