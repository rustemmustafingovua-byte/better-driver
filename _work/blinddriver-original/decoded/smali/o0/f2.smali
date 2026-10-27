.class public final synthetic Lo0/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:I

.field public final synthetic l:Li9/e;

.field public final synthetic m:Li9/f;

.field public final synthetic n:Li9/e;

.field public final synthetic o:Li9/e;

.field public final synthetic p:Li9/e;

.field public final synthetic q:Li9/e;

.field public final synthetic r:Li9/e;

.field public final synthetic s:Z

.field public final synthetic t:Lo0/a5;

.field public final synthetic u:Lp0/x;

.field public final synthetic v:Li9/c;

.field public final synthetic w:Lz0/d;

.field public final synthetic x:Li9/e;

.field public final synthetic y:Lu/s0;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Li9/e;Li9/f;Li9/e;Li9/e;Li9/e;Li9/e;Li9/e;ZLo0/a5;Lp0/x;Li9/c;Lz0/d;Li9/e;Lu/s0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/f2;->l:Li9/e;

    iput-object p2, p0, Lo0/f2;->m:Li9/f;

    iput-object p3, p0, Lo0/f2;->n:Li9/e;

    iput-object p4, p0, Lo0/f2;->o:Li9/e;

    iput-object p5, p0, Lo0/f2;->p:Li9/e;

    iput-object p6, p0, Lo0/f2;->q:Li9/e;

    iput-object p7, p0, Lo0/f2;->r:Li9/e;

    iput-boolean p8, p0, Lo0/f2;->s:Z

    iput-object p9, p0, Lo0/f2;->t:Lo0/a5;

    iput-object p10, p0, Lo0/f2;->u:Lp0/x;

    iput-object p11, p0, Lo0/f2;->v:Li9/c;

    iput-object p12, p0, Lo0/f2;->w:Lz0/d;

    iput-object p13, p0, Lo0/f2;->x:Li9/e;

    iput-object p14, p0, Lo0/f2;->y:Lu/s0;

    iput p15, p0, Lo0/f2;->z:I

    move/from16 p1, p16

    iput p1, p0, Lo0/f2;->A:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lo0/f2;->z:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v15

    iget v1, v0, Lo0/f2;->A:I

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v16

    iget-object v1, v0, Lo0/f2;->l:Li9/e;

    move-object v2, v1

    iget-object v1, v0, Lo0/f2;->m:Li9/f;

    move-object v3, v2

    iget-object v2, v0, Lo0/f2;->n:Li9/e;

    move-object v4, v3

    iget-object v3, v0, Lo0/f2;->o:Li9/e;

    move-object v5, v4

    iget-object v4, v0, Lo0/f2;->p:Li9/e;

    move-object v6, v5

    iget-object v5, v0, Lo0/f2;->q:Li9/e;

    move-object v7, v6

    iget-object v6, v0, Lo0/f2;->r:Li9/e;

    move-object v8, v7

    iget-boolean v7, v0, Lo0/f2;->s:Z

    move-object v9, v8

    iget-object v8, v0, Lo0/f2;->t:Lo0/a5;

    move-object v10, v9

    iget-object v9, v0, Lo0/f2;->u:Lp0/x;

    move-object v11, v10

    iget-object v10, v0, Lo0/f2;->v:Li9/c;

    move-object v12, v11

    iget-object v11, v0, Lo0/f2;->w:Lz0/d;

    move-object v13, v12

    iget-object v12, v0, Lo0/f2;->x:Li9/e;

    iget-object v0, v0, Lo0/f2;->y:Lu/s0;

    move-object/from16 v17, v13

    move-object v13, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Lo0/j2;->b(Li9/e;Li9/f;Li9/e;Li9/e;Li9/e;Li9/e;Li9/e;ZLo0/a5;Lp0/x;Li9/c;Lz0/d;Li9/e;Lu/s0;Lr0/q;II)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
