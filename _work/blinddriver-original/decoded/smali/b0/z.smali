.class public final synthetic Lb0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lp2/g;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lp2/m0;

.field public final synthetic o:Li9/c;

.field public final synthetic p:I

.field public final synthetic q:Z

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Ljava/util/Map;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Lp2/g;Lf1/r;Lp2/m0;Li9/c;IZIILjava/util/Map;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/z;->l:Lp2/g;

    iput-object p2, p0, Lb0/z;->m:Lf1/r;

    iput-object p3, p0, Lb0/z;->n:Lp2/m0;

    iput-object p4, p0, Lb0/z;->o:Li9/c;

    iput p5, p0, Lb0/z;->p:I

    iput-boolean p6, p0, Lb0/z;->q:Z

    iput p7, p0, Lb0/z;->r:I

    iput p8, p0, Lb0/z;->s:I

    iput-object p9, p0, Lb0/z;->t:Ljava/util/Map;

    iput p10, p0, Lb0/z;->u:I

    iput p11, p0, Lb0/z;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb0/z;->u:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget p1, p0, Lb0/z;->v:I

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v0, p0, Lb0/z;->l:Lp2/g;

    iget-object v1, p0, Lb0/z;->m:Lf1/r;

    iget-object v2, p0, Lb0/z;->n:Lp2/m0;

    iget-object v3, p0, Lb0/z;->o:Li9/c;

    iget v4, p0, Lb0/z;->p:I

    iget-boolean v5, p0, Lb0/z;->q:Z

    iget v6, p0, Lb0/z;->r:I

    iget v7, p0, Lb0/z;->s:I

    iget-object v8, p0, Lb0/z;->t:Ljava/util/Map;

    invoke-static/range {v0 .. v11}, Lb0/n1;->a(Lp2/g;Lf1/r;Lp2/m0;Li9/c;IZIILjava/util/Map;Lr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
