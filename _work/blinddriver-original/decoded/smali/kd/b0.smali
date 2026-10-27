.class public final Lkd/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Application;Lu9/t;Lx9/l0;Lx9/l0;Lx9/u;Lx9/l0;Lp2/y;Lsc/i;Lp2/y;)V
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "scope"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "visible"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enabled"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sharing"

    move-object/from16 v10, p5

    invoke-static {v10, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v5

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v6

    new-instance v8, Lj9/y;

    invoke-direct {v8}, Lj9/y;-><init>()V

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lz9/n;->a:Lv9/d;

    new-instance v2, Lkd/a0;

    const/4 v14, 0x0

    move-object v7, p0

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lkd/a0;-><init>(Lx9/g;Lx9/g;Lx9/l0;Lx9/l0;Landroid/app/Application;Lj9/y;Lx9/u;Lx9/g;Lp2/y;Lsc/i;Lp2/y;Ly8/c;)V

    const/4 p0, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method
