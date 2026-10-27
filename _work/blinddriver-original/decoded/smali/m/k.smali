.class public final Lm/k;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ln/h1;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Lm/a0;

.field public final synthetic p:Lm/b0;

.field public final synthetic q:Lz0/d;

.field public final synthetic r:I


# direct methods
.method public constructor <init>(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Lz0/d;I)V
    .locals 0

    iput-object p1, p0, Lm/k;->l:Ln/h1;

    iput-object p2, p0, Lm/k;->m:Li9/c;

    iput-object p3, p0, Lm/k;->n:Lf1/r;

    iput-object p4, p0, Lm/k;->o:Lm/a0;

    iput-object p5, p0, Lm/k;->p:Lm/b0;

    iput-object p6, p0, Lm/k;->q:Lz0/d;

    iput p7, p0, Lm/k;->r:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lm/k;->r:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v0, p0, Lm/k;->l:Ln/h1;

    iget-object v1, p0, Lm/k;->m:Li9/c;

    iget-object v2, p0, Lm/k;->n:Lf1/r;

    iget-object v3, p0, Lm/k;->o:Lm/a0;

    iget-object v4, p0, Lm/k;->p:Lm/b0;

    iget-object v5, p0, Lm/k;->q:Lz0/d;

    invoke-static/range {v0 .. v7}, Lm/l;->c(Ln/h1;Li9/c;Lf1/r;Lm/a0;Lm/b0;Lz0/d;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
