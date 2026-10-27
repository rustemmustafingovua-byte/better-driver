.class public final synthetic Lb0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lf1/r;

.field public final synthetic m:Lp2/g;

.field public final synthetic n:Li9/c;

.field public final synthetic o:Z

.field public final synthetic p:Ljava/util/Map;

.field public final synthetic q:Lp2/m0;

.field public final synthetic r:I

.field public final synthetic s:Z

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:Lt2/d;

.field public final synthetic w:Ll0/i;

.field public final synthetic x:Li9/c;

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Lf1/r;Lp2/g;Li9/c;ZLjava/util/Map;Lp2/m0;IZIILt2/d;Ll0/i;Li9/c;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/v;->l:Lf1/r;

    iput-object p2, p0, Lb0/v;->m:Lp2/g;

    iput-object p3, p0, Lb0/v;->n:Li9/c;

    iput-boolean p4, p0, Lb0/v;->o:Z

    iput-object p5, p0, Lb0/v;->p:Ljava/util/Map;

    iput-object p6, p0, Lb0/v;->q:Lp2/m0;

    iput p7, p0, Lb0/v;->r:I

    iput-boolean p8, p0, Lb0/v;->s:Z

    iput p9, p0, Lb0/v;->t:I

    iput p10, p0, Lb0/v;->u:I

    iput-object p11, p0, Lb0/v;->v:Lt2/d;

    iput-object p12, p0, Lb0/v;->w:Ll0/i;

    iput-object p13, p0, Lb0/v;->x:Li9/c;

    iput p14, p0, Lb0/v;->y:I

    iput p15, p0, Lb0/v;->z:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lb0/v;->y:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v14

    iget v1, v0, Lb0/v;->z:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v15

    iget-object v1, v0, Lb0/v;->l:Lf1/r;

    move-object v2, v1

    iget-object v1, v0, Lb0/v;->m:Lp2/g;

    move-object v3, v2

    iget-object v2, v0, Lb0/v;->n:Li9/c;

    move-object v4, v3

    iget-boolean v3, v0, Lb0/v;->o:Z

    move-object v5, v4

    iget-object v4, v0, Lb0/v;->p:Ljava/util/Map;

    move-object v6, v5

    iget-object v5, v0, Lb0/v;->q:Lp2/m0;

    move-object v7, v6

    iget v6, v0, Lb0/v;->r:I

    move-object v8, v7

    iget-boolean v7, v0, Lb0/v;->s:Z

    move-object v9, v8

    iget v8, v0, Lb0/v;->t:I

    move-object v10, v9

    iget v9, v0, Lb0/v;->u:I

    move-object v11, v10

    iget-object v10, v0, Lb0/v;->v:Lt2/d;

    move-object v12, v11

    iget-object v11, v0, Lb0/v;->w:Ll0/i;

    iget-object v0, v0, Lb0/v;->x:Li9/c;

    move-object/from16 v16, v12

    move-object v12, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Lb0/n1;->i(Lf1/r;Lp2/g;Li9/c;ZLjava/util/Map;Lp2/m0;IZIILt2/d;Ll0/i;Li9/c;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
