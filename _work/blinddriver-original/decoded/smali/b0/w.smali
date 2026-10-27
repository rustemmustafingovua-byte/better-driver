.class public final synthetic Lb0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lp2/m0;

.field public final synthetic o:Li9/c;

.field public final synthetic p:I

.field public final synthetic q:Z

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/w;->l:Ljava/lang/String;

    iput-object p2, p0, Lb0/w;->m:Lf1/r;

    iput-object p3, p0, Lb0/w;->n:Lp2/m0;

    iput-object p4, p0, Lb0/w;->o:Li9/c;

    iput p5, p0, Lb0/w;->p:I

    iput-boolean p6, p0, Lb0/w;->q:Z

    iput p7, p0, Lb0/w;->r:I

    iput p8, p0, Lb0/w;->s:I

    iput p9, p0, Lb0/w;->t:I

    iput p10, p0, Lb0/w;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb0/w;->t:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lb0/w;->l:Ljava/lang/String;

    iget-object v1, p0, Lb0/w;->m:Lf1/r;

    iget-object v2, p0, Lb0/w;->n:Lp2/m0;

    iget-object v3, p0, Lb0/w;->o:Li9/c;

    iget v4, p0, Lb0/w;->p:I

    iget-boolean v5, p0, Lb0/w;->q:Z

    iget v6, p0, Lb0/w;->r:I

    iget v7, p0, Lb0/w;->s:I

    iget v10, p0, Lb0/w;->u:I

    invoke-static/range {v0 .. v10}, Lb0/n1;->b(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIILr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
