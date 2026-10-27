.class public final Lf8/y2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Lf8/i1;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;


# direct methods
.method public constructor <init>(Lf8/i1;Lf8/w2;Lf8/a3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/y2;->l:Lf8/i1;

    iput-object p2, p0, Lf8/y2;->n:Lf8/w2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lf8/a3;->m:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf8/i1;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf8/y2;->m:Ljava/lang/String;

    iget-object p1, p2, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {p1, p0}, Lf8/p2;->b(Lf8/x2;)V

    return-void
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/y2;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/y2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/y2;->l:Lf8/i1;

    invoke-virtual {p0}, Lf8/i1;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/y2;->l:Lf8/i1;

    return-object p0
.end method
