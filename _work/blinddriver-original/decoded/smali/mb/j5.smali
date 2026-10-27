.class public final Lmb/j5;
.super Lmb/m3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/util/List;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/j5;->c:Ljava/util/List;

    iput-boolean p3, p0, Lmb/j5;->d:Z

    iput-object p4, p0, Lmb/j5;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/j5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lmb/j5;->d:Z

    if-eqz p0, :cond_0

    const-string p0, " case label(s) plus DEFAULT"

    goto :goto_0

    :cond_0
    const-string p0, " case label(s)"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
