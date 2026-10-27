.class public final Lm0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lb0/c2;


# direct methods
.method public synthetic constructor <init>(Lb0/c2;I)V
    .locals 0

    iput p2, p0, Lm0/j0;->a:I

    iput-object p1, p0, Lm0/j0;->b:Lb0/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/j0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm0/j0;->b:Lb0/c2;

    invoke-static {p1, p0, p2}, Lb0/n1;->p(Ly1/x;Lb0/c2;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lm0/j0;->b:Lb0/c2;

    invoke-static {p1, p0, p2}, Lb0/n1;->p(Ly1/x;Lb0/c2;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
