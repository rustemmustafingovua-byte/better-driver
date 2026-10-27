.class public final Lmb/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lmb/b0;

.field public c:Lmb/j3;


# direct methods
.method public constructor <init>(ZLmb/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmb/g3;->a:Z

    iput-object p2, p0, Lmb/g3;->b:Lmb/b0;

    return-void
.end method


# virtual methods
.method public final a()S
    .locals 0

    iget-object p0, p0, Lmb/g3;->c:Lmb/j3;

    if-eqz p0, :cond_0

    iget-short p0, p0, Lmb/j3;->a:S

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lmb/g3;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lmb/g3;->c:Lmb/j3;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmb/g3;->b:Lmb/b0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
