.class public Lcom/graphhopper/routing/TestProfiles;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessAndSpeed(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 0

    .line 1
    invoke-static {p0, p0}, Lcom/graphhopper/routing/TestProfiles;->accessAndSpeed(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/config/Profile;

    move-result-object p0

    return-object p0
.end method

.method public static accessAndSpeed(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 4

    .line 2
    new-instance v0, Lcom/graphhopper/config/Profile;

    invoke-direct {v0, p0}, Lcom/graphhopper/config/Profile;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/graphhopper/util/CustomModel;

    invoke-direct {p0}, Lcom/graphhopper/util/CustomModel;-><init>()V

    const-string v1, "!"

    const-string v2, "_access"

    .line 4
    invoke-static {v1, p1, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/graphhopper/json/Statement$Op;->MULTIPLY:Lcom/graphhopper/json/Statement$Op;

    const-string v3, "0"

    .line 6
    invoke-static {v1, v2, v3}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/CustomModel;->addToPriority(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    sget-object v1, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_average_speed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    const-string v2, "true"

    invoke-static {v2, v1, p1}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/CustomModel;->addToSpeed(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    return-object v0
.end method

.method public static accessSpeedAndPriority(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 0

    .line 1
    invoke-static {p0, p0}, Lcom/graphhopper/routing/TestProfiles;->accessSpeedAndPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/config/Profile;

    move-result-object p0

    return-object p0
.end method

.method public static accessSpeedAndPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 5

    .line 2
    new-instance v0, Lcom/graphhopper/config/Profile;

    invoke-direct {v0, p0}, Lcom/graphhopper/config/Profile;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/graphhopper/util/CustomModel;

    invoke-direct {p0}, Lcom/graphhopper/util/CustomModel;-><init>()V

    const-string v1, "_access"

    .line 4
    invoke-static {p1, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/graphhopper/json/Statement$Op;->MULTIPLY:Lcom/graphhopper/json/Statement$Op;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_priority"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v1, v2, v3}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/CustomModel;->addToPriority(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    const-string v1, "0"

    .line 7
    invoke-static {v2, v1}, Lcom/graphhopper/json/Statement;->Else(Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/CustomModel;->addToPriority(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    sget-object v1, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_average_speed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v2, "true"

    invoke-static {v2, v1, p1}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/CustomModel;->addToSpeed(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    return-object v0
.end method

.method public static constantSpeed(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/graphhopper/routing/TestProfiles;->constantSpeed(Ljava/lang/String;D)Lcom/graphhopper/config/Profile;

    move-result-object p0

    return-object p0
.end method

.method public static constantSpeed(Ljava/lang/String;D)Lcom/graphhopper/config/Profile;
    .locals 2

    .line 2
    new-instance v0, Lcom/graphhopper/config/Profile;

    invoke-direct {v0, p0}, Lcom/graphhopper/config/Profile;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/graphhopper/util/CustomModel;

    invoke-direct {p0}, Lcom/graphhopper/util/CustomModel;-><init>()V

    .line 4
    sget-object v1, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-static {p2, v1, p1}, Lcom/graphhopper/json/Statement;->If(Ljava/lang/String;Lcom/graphhopper/json/Statement$Op;Ljava/lang/String;)Lcom/graphhopper/json/Statement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/CustomModel;->addToSpeed(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;

    .line 5
    invoke-virtual {v0, p0}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    return-object v0
.end method
