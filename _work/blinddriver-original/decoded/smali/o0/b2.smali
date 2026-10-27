.class public final synthetic Lo0/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic l:Lo0/d2;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Li9/e;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lu2/d0;

.field public final synthetic r:Ls/i;

.field public final synthetic s:Z

.field public final synthetic t:Li9/e;

.field public final synthetic u:Li9/e;

.field public final synthetic v:Li9/e;

.field public final synthetic w:Li9/e;

.field public final synthetic x:Lo0/x4;

.field public final synthetic y:Lu/s0;

.field public final synthetic z:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lo0/d2;Ljava/lang/String;Li9/e;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lu/s0;Lz0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/b2;->l:Lo0/d2;

    iput-object p2, p0, Lo0/b2;->m:Ljava/lang/String;

    iput-object p3, p0, Lo0/b2;->n:Li9/e;

    iput-boolean p4, p0, Lo0/b2;->o:Z

    iput-boolean p5, p0, Lo0/b2;->p:Z

    iput-object p6, p0, Lo0/b2;->q:Lu2/d0;

    iput-object p7, p0, Lo0/b2;->r:Ls/i;

    iput-boolean p8, p0, Lo0/b2;->s:Z

    iput-object p9, p0, Lo0/b2;->t:Li9/e;

    iput-object p10, p0, Lo0/b2;->u:Li9/e;

    iput-object p11, p0, Lo0/b2;->v:Li9/e;

    iput-object p12, p0, Lo0/b2;->w:Li9/e;

    iput-object p13, p0, Lo0/b2;->x:Lo0/x4;

    iput-object p14, p0, Lo0/b2;->y:Lu/s0;

    iput-object p15, p0, Lo0/b2;->z:Lz0/d;

    move/from16 p1, p16

    iput p1, p0, Lo0/b2;->A:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/b2;->A:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v16

    iget-object v1, v0, Lo0/b2;->l:Lo0/d2;

    move-object v2, v1

    iget-object v1, v0, Lo0/b2;->m:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lo0/b2;->n:Li9/e;

    move-object v4, v3

    iget-boolean v3, v0, Lo0/b2;->o:Z

    move-object v5, v4

    iget-boolean v4, v0, Lo0/b2;->p:Z

    move-object v6, v5

    iget-object v5, v0, Lo0/b2;->q:Lu2/d0;

    move-object v7, v6

    iget-object v6, v0, Lo0/b2;->r:Ls/i;

    move-object v8, v7

    iget-boolean v7, v0, Lo0/b2;->s:Z

    move-object v9, v8

    iget-object v8, v0, Lo0/b2;->t:Li9/e;

    move-object v10, v9

    iget-object v9, v0, Lo0/b2;->u:Li9/e;

    move-object v11, v10

    iget-object v10, v0, Lo0/b2;->v:Li9/e;

    move-object v12, v11

    iget-object v11, v0, Lo0/b2;->w:Li9/e;

    move-object v13, v12

    iget-object v12, v0, Lo0/b2;->x:Lo0/x4;

    move-object v14, v13

    iget-object v13, v0, Lo0/b2;->y:Lu/s0;

    iget-object v0, v0, Lo0/b2;->z:Lz0/d;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    invoke-virtual/range {v0 .. v16}, Lo0/d2;->b(Ljava/lang/String;Li9/e;ZZLu2/d0;Ls/i;ZLi9/e;Li9/e;Li9/e;Li9/e;Lo0/x4;Lu/s0;Lz0/d;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
