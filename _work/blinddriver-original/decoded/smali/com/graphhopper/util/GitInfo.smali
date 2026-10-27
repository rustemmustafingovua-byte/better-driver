.class public Lcom/graphhopper/util/GitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final branch:Ljava/lang/String;

.field private final commitHash:Ljava/lang/String;

.field private final commitMessage:Ljava/lang/String;

.field private final commitTime:Ljava/lang/String;

.field private final dirty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/GitInfo;->commitHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/util/GitInfo;->commitTime:Ljava/lang/String;

    iput-object p3, p0, Lcom/graphhopper/util/GitInfo;->commitMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/graphhopper/util/GitInfo;->branch:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/graphhopper/util/GitInfo;->dirty:Z

    return-void
.end method


# virtual methods
.method public getBranch()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/GitInfo;->branch:Ljava/lang/String;

    return-object p0
.end method

.method public getCommitHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/GitInfo;->commitHash:Ljava/lang/String;

    return-object p0
.end method

.method public getCommitMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/GitInfo;->commitMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getCommitTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/GitInfo;->commitTime:Ljava/lang/String;

    return-object p0
.end method

.method public isDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/GitInfo;->dirty:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/util/GitInfo;->commitHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/graphhopper/util/GitInfo;->branch:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/graphhopper/util/GitInfo;->dirty:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dirty="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/util/GitInfo;->commitTime:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/util/GitInfo;->commitMessage:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "|"

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
