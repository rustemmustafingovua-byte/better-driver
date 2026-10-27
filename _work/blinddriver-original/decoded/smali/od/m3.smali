.class public final synthetic Lod/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/Integer;

.field public final synthetic m:F

.field public final synthetic n:Lf1/r;

.field public final synthetic o:F

.field public final synthetic p:F

.field public final synthetic q:Z

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;FLf1/r;FFZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/m3;->l:Ljava/lang/Integer;

    iput p2, p0, Lod/m3;->m:F

    iput-object p3, p0, Lod/m3;->n:Lf1/r;

    iput p4, p0, Lod/m3;->o:F

    iput p5, p0, Lod/m3;->p:F

    iput-boolean p6, p0, Lod/m3;->q:Z

    iput p7, p0, Lod/m3;->r:I

    iput p8, p0, Lod/m3;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/m3;->r:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v7

    iget-object v0, p0, Lod/m3;->l:Ljava/lang/Integer;

    iget v1, p0, Lod/m3;->m:F

    iget-object v2, p0, Lod/m3;->n:Lf1/r;

    iget v3, p0, Lod/m3;->o:F

    iget v4, p0, Lod/m3;->p:F

    iget-boolean v5, p0, Lod/m3;->q:Z

    iget v8, p0, Lod/m3;->s:I

    invoke-static/range {v0 .. v8}, Lod/e4;->q(Ljava/lang/Integer;FLf1/r;FFZLr0/q;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
