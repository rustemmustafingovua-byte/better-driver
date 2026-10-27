.class public final synthetic Ll0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ll0/i;


# direct methods
.method public synthetic constructor <init>(Ll0/i;I)V
    .locals 0

    iput p2, p0, Ll0/h;->l:I

    iput-object p1, p0, Ll0/h;->m:Ll0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll0/h;->l:I

    iget-object p0, p0, Ll0/h;->m:Ll0/i;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ll0/i;->o:Ll0/m;

    iget-object p0, p0, Ll0/m;->a:Lc2/u;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ll0/i;->o:Ll0/m;

    iget-object p0, p0, Ll0/m;->b:Lp2/j0;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ll0/i;->o:Ll0/m;

    iget-object p0, p0, Ll0/m;->a:Lc2/u;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
