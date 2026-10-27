.class public final synthetic Lod/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/support/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/support/a;I)V
    .locals 0

    iput p2, p0, Lod/x;->l:I

    iput-object p1, p0, Lod/x;->m:Lua/nav/support/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/x;->l:I

    iget-object p0, p0, Lod/x;->m:Lua/nav/support/a;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lua/nav/support/a;->b()V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lua/nav/support/a;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
