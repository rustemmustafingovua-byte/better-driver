.class public final synthetic Lod/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic l:Lad/a0;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Li9/a;

.field public final synthetic o:Li9/a;

.field public final synthetic p:F

.field public final synthetic q:Z

.field public final synthetic r:Li9/a;

.field public final synthetic s:Li9/a;

.field public final synthetic t:Lf1/r;

.field public final synthetic u:Z

.field public final synthetic v:Z

.field public final synthetic w:Li9/c;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Z

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/w3;->l:Lad/a0;

    iput-object p2, p0, Lod/w3;->m:Li9/c;

    iput-object p3, p0, Lod/w3;->n:Li9/a;

    iput-object p4, p0, Lod/w3;->o:Li9/a;

    iput p5, p0, Lod/w3;->p:F

    iput-boolean p6, p0, Lod/w3;->q:Z

    iput-object p7, p0, Lod/w3;->r:Li9/a;

    iput-object p8, p0, Lod/w3;->s:Li9/a;

    iput-object p9, p0, Lod/w3;->t:Lf1/r;

    iput-boolean p10, p0, Lod/w3;->u:Z

    iput-boolean p11, p0, Lod/w3;->v:Z

    iput-object p12, p0, Lod/w3;->w:Li9/c;

    iput-object p13, p0, Lod/w3;->x:Ljava/lang/String;

    iput-boolean p14, p0, Lod/w3;->y:Z

    iput p15, p0, Lod/w3;->z:I

    move/from16 p1, p16

    iput p1, p0, Lod/w3;->A:I

    move/from16 p1, p17

    iput p1, p0, Lod/w3;->B:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lod/w3;->z:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v15

    iget v1, v0, Lod/w3;->A:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v16

    iget-object v1, v0, Lod/w3;->l:Lad/a0;

    move-object v2, v1

    iget-object v1, v0, Lod/w3;->m:Li9/c;

    move-object v3, v2

    iget-object v2, v0, Lod/w3;->n:Li9/a;

    move-object v4, v3

    iget-object v3, v0, Lod/w3;->o:Li9/a;

    move-object v5, v4

    iget v4, v0, Lod/w3;->p:F

    move-object v6, v5

    iget-boolean v5, v0, Lod/w3;->q:Z

    move-object v7, v6

    iget-object v6, v0, Lod/w3;->r:Li9/a;

    move-object v8, v7

    iget-object v7, v0, Lod/w3;->s:Li9/a;

    move-object v9, v8

    iget-object v8, v0, Lod/w3;->t:Lf1/r;

    move-object v10, v9

    iget-boolean v9, v0, Lod/w3;->u:Z

    move-object v11, v10

    iget-boolean v10, v0, Lod/w3;->v:Z

    move-object v12, v11

    iget-object v11, v0, Lod/w3;->w:Li9/c;

    move-object v13, v12

    iget-object v12, v0, Lod/w3;->x:Ljava/lang/String;

    move-object/from16 v17, v13

    iget-boolean v13, v0, Lod/w3;->y:Z

    iget v0, v0, Lod/w3;->B:I

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Lod/e4;->j(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZLr0/q;III)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
