.class public final synthetic Lod/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lf1/r;

.field public final synthetic n:J

.field public final synthetic o:F

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;JFII)V
    .locals 0

    iput p6, p0, Lod/o3;->l:I

    iput-object p1, p0, Lod/o3;->m:Lf1/r;

    iput-wide p2, p0, Lod/o3;->n:J

    iput p4, p0, Lod/o3;->o:F

    iput p5, p0, Lod/o3;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lod/o3;->l:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/o3;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v2

    iget v1, p0, Lod/o3;->o:F

    iget-wide v3, p0, Lod/o3;->n:J

    iget-object v5, p0, Lod/o3;->m:Lf1/r;

    invoke-static/range {v1 .. v6}, Lod/e4;->n(FIJLf1/r;Lr0/q;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/o3;->p:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v1

    iget v0, p0, Lod/o3;->o:F

    iget-wide v2, p0, Lod/o3;->n:J

    iget-object v4, p0, Lod/o3;->m:Lf1/r;

    invoke-static/range {v0 .. v5}, Lod/e4;->e(FIJLf1/r;Lr0/q;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
