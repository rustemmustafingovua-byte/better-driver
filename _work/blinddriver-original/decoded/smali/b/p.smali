.class public final synthetic Lb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb/q;


# direct methods
.method public synthetic constructor <init>(Lb/q;I)V
    .locals 0

    iput p2, p0, Lb/p;->l:I

    iput-object p1, p0, Lb/p;->m:Lb/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lb/p;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lb/h0;

    new-instance v1, Landroidx/lifecycle/f0;

    const/4 v2, 0x2

    iget-object p0, p0, Lb/p;->m:Lb/q;

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lb/h0;-><init>(Ljava/lang/Runnable;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lh4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lb/p;->m:Lb/q;

    invoke-virtual {p0}, Lb/q;->b()Lg5/i;

    move-result-object p0

    invoke-virtual {p0, v0}, Lg5/i;->f(Lh4/f;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
