.class public final Lr0/k;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final l:Lk/h0;

.field public final m:Lk/h0;

.field public final n:Lk/w;

.field public final o:I


# direct methods
.method public constructor <init>(Lk/h0;Lk/h0;Lk/w;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lr0/k;->l:Lk/h0;

    iput-object p2, p0, Lr0/k;->m:Lk/h0;

    iput-object p3, p0, Lr0/k;->n:Lk/w;

    iput p4, p0, Lr0/k;->o:I

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            |Failed to execute op number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lr0/k;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lr0/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr0/j;-><init>(Lr0/k;Ly8/c;)V

    new-instance p0, Lf9/l;

    invoke-direct {p0, v1}, Lf9/l;-><init>(Li9/e;)V

    invoke-static {p0}, Lq9/j;->E(Lq9/h;)Ljava/util/List;

    move-result-object p0

    const/16 v1, 0x32

    invoke-static {v1, p0}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr9/l;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
