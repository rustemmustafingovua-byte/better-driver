.class public final synthetic Lod/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Li9/a;

.field public final synthetic m:Li9/a;

.field public final synthetic n:Li9/a;

.field public final synthetic o:Li9/a;

.field public final synthetic p:Ljd/b;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lua/nav/a;

.field public final synthetic s:Li9/c;

.field public final synthetic t:Lr0/r2;

.field public final synthetic u:Lr0/r2;

.field public final synthetic v:Lr0/r2;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;Li9/a;Li9/a;Li9/a;Ljd/b;Lr0/u0;Lua/nav/a;Li9/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/g6;->l:Li9/a;

    iput-object p2, p0, Lod/g6;->m:Li9/a;

    iput-object p3, p0, Lod/g6;->n:Li9/a;

    iput-object p4, p0, Lod/g6;->o:Li9/a;

    iput-object p5, p0, Lod/g6;->p:Ljd/b;

    iput-object p6, p0, Lod/g6;->q:Lr0/u0;

    iput-object p7, p0, Lod/g6;->r:Lua/nav/a;

    iput-object p8, p0, Lod/g6;->s:Li9/c;

    iput-object p9, p0, Lod/g6;->t:Lr0/r2;

    iput-object p10, p0, Lod/g6;->u:Lr0/r2;

    iput-object p11, p0, Lod/g6;->v:Lr0/r2;

    iput-object p12, p0, Lod/g6;->w:Lr0/u0;

    iput-object p13, p0, Lod/g6;->x:Lr0/u0;

    iput-object p14, p0, Lod/g6;->y:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lw/e;

    const-string v2, "$this$LazyColumn"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lod/l6;

    const/4 v3, 0x0

    iget-object v4, v0, Lod/g6;->l:Li9/a;

    invoke-direct {v2, v4, v3}, Lod/l6;-><init>(Li9/a;I)V

    new-instance v3, Lz0/d;

    const v4, 0x53697c66

    const/4 v7, 0x1

    invoke-direct {v3, v4, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v1, v8, v3, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v2, Lod/l6;

    const/4 v3, 0x1

    iget-object v4, v0, Lod/g6;->m:Li9/a;

    invoke-direct {v2, v4, v3}, Lod/l6;-><init>(Li9/a;I)V

    new-instance v3, Lz0/d;

    const v4, -0x504f6963

    invoke-direct {v3, v4, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v8, v3, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v2, Lod/l6;

    const/4 v3, 0x2

    iget-object v4, v0, Lod/g6;->n:Li9/a;

    invoke-direct {v2, v4, v3}, Lod/l6;-><init>(Li9/a;I)V

    new-instance v3, Lz0/d;

    const v4, 0x2f738f9e

    invoke-direct {v3, v4, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v8, v3, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v2, Lod/l6;

    const/4 v3, 0x3

    iget-object v4, v0, Lod/g6;->o:Li9/a;

    invoke-direct {v2, v4, v3}, Lod/l6;-><init>(Li9/a;I)V

    new-instance v3, Lz0/d;

    const v4, -0x50c97761

    invoke-direct {v3, v4, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v8, v3, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v6, Lb0/a;

    const/16 v2, 0x14

    iget-object v10, v0, Lod/g6;->p:Ljd/b;

    invoke-direct {v6, v2, v10}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iget-object v2, v0, Lod/g6;->q:Lr0/u0;

    const-string v3, "plan"

    const-string v4, "\u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0439 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    const-string v5, "\u0422\u0430\u0440\u0438\u0444, \u043d\u043e\u0432\u0456 \u0432\u0435\u0440\u0441\u0456\u0457, \u0432\u043b\u0430\u0441\u043d\u0438\u0439 \u043a\u043b\u044e\u0447 Mapbox"

    invoke-static/range {v1 .. v6}, Lod/v6;->p(Lw/e;Lr0/u0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;)V

    new-instance v6, Lod/m6;

    iget-object v15, v0, Lod/g6;->r:Lua/nav/a;

    iget-object v12, v0, Lod/g6;->s:Li9/c;

    iget-object v13, v0, Lod/g6;->t:Lr0/r2;

    iget-object v14, v0, Lod/g6;->u:Lr0/r2;

    move-object v11, v15

    iget-object v15, v0, Lod/g6;->v:Lr0/r2;

    iget-object v3, v0, Lod/g6;->w:Lr0/u0;

    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object v10, v6

    invoke-direct/range {v10 .. v17}, Lod/m6;-><init>(Lua/nav/a;Li9/c;Lr0/r2;Lr0/r2;Lr0/r2;Lr0/u0;Ljd/b;)V

    move-object/from16 v14, v16

    const-string v3, "nav"

    const-string v4, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f \u0439 \u0433\u043e\u043b\u043e\u0441"

    const-string v5, "\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430, \u043f\u043e\u0432\u0435\u0434\u0456\u043d\u043a\u0430 \u0431\u0435\u0437 GPS, \u0433\u0443\u0447\u043d\u0456\u0441\u0442\u044c \u043f\u0456\u0434\u043a\u0430\u0437\u043e\u043a, \u043a\u0430\u043c\u0435\u0440\u0438"

    invoke-static/range {v1 .. v6}, Lod/v6;->p(Lw/e;Lr0/u0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;)V

    new-instance v6, Lb0/o;

    const/16 v3, 0x10

    invoke-direct {v6, v12, v13, v11, v3}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v3, "map"

    const-string v4, "\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d"

    const-string v5, "\u041f\u0456\u0434\u043f\u0438\u0441\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456, \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043a\u0430\u0440\u0442\u0438, \u0430\u0434\u0440\u0435\u0441 \u0456 \u0433\u0440\u0430\u0444\u0430 \u0434\u043e\u0440\u0456\u0433"

    invoke-static/range {v1 .. v6}, Lod/v6;->p(Lw/e;Lr0/u0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;)V

    new-instance v6, Lb0/d2;

    const/16 v17, 0x5

    iget-object v3, v0, Lod/g6;->x:Lr0/u0;

    move-object/from16 v16, v3

    move-object v15, v11

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lb0/d2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v3, "adv"

    const-string v4, "\u0414\u0430\u0442\u0447\u0438\u043a\u0438 \u0439 \u043b\u043e\u0433\u0438 (\u0434\u043b\u044f \u0434\u043e\u0441\u0432\u0456\u0434\u0447\u0435\u043d\u0438\u0445)"

    const-string v5, "\u041f\u043e\u0440\u043e\u0433\u0438 \u0434\u0435\u0442\u0435\u043a\u0442\u043e\u0440\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438, \u0437\u0430\u043f\u0438\u0441 \u0456 \u043e\u0431\u0440\u0456\u0437\u043a\u0430 \u043b\u043e\u0433\u0456\u0432, \u0441\u043a\u0438\u0434\u0430\u043d\u043d\u044f \u043d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u044c"

    invoke-static/range {v1 .. v6}, Lod/v6;->p(Lw/e;Lr0/u0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;)V

    new-instance v2, Lod/l6;

    const/4 v3, 0x4

    iget-object v0, v0, Lod/g6;->y:Li9/a;

    invoke-direct {v2, v0, v3}, Lod/l6;-><init>(Li9/a;I)V

    new-instance v0, Lz0/d;

    const v3, 0x2ef981a0

    invoke-direct {v0, v3, v7, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v8, v0, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object v0, Lod/m;->z0:Lz0/d;

    invoke-static {v1, v8, v0, v9}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
