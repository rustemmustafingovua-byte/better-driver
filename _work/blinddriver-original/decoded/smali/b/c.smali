.class public final synthetic Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb/o;


# direct methods
.method public synthetic constructor <init>(Lb/o;I)V
    .locals 0

    iput p2, p0, Lb/c;->l:I

    iput-object p1, p0, Lb/c;->m:Lb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lb/c;->l:I

    iget-object p0, p0, Lb/c;->m:Lb/o;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lb/o;->c(Lb/o;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
