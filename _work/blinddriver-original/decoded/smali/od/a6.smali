.class public final synthetic Lod/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;

.field public final synthetic n:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Lr0/r2;I)V
    .locals 0

    iput p3, p0, Lod/a6;->l:I

    iput-object p1, p0, Lod/a6;->m:Lua/nav/a;

    iput-object p2, p0, Lod/a6;->n:Lr0/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lod/a6;->l:I

    check-cast p1, Ljava/lang/Double;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object p1, p0, Lod/a6;->n:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lid/l1;

    const-wide/16 v3, 0x0

    const/4 v7, 0x3

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v7}, Lid/l1;->a(Lid/l1;DDDI)Lid/l1;

    move-result-object p1

    iget-object p0, p0, Lod/a6;->m:Lua/nav/a;

    invoke-virtual {p0, p1}, Lua/nav/a;->k(Lid/l1;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object p1, p0, Lod/a6;->n:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lid/l1;

    const-wide/16 v5, 0x0

    const/4 v7, 0x5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v7}, Lid/l1;->a(Lid/l1;DDDI)Lid/l1;

    move-result-object p1

    iget-object p0, p0, Lod/a6;->m:Lua/nav/a;

    invoke-virtual {p0, p1}, Lua/nav/a;->k(Lid/l1;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object p1, p0, Lod/a6;->n:Lr0/r2;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lid/l1;

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v7}, Lid/l1;->a(Lid/l1;DDDI)Lid/l1;

    move-result-object p1

    iget-object p0, p0, Lod/a6;->m:Lua/nav/a;

    invoke-virtual {p0, p1}, Lua/nav/a;->k(Lid/l1;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
