.class public final Ln/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/f0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln/h1;


# direct methods
.method public synthetic constructor <init>(Ln/h1;I)V
    .locals 0

    iput p2, p0, Ln/l1;->a:I

    iput-object p1, p0, Ln/l1;->b:Ln/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Ln/l1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ln/l1;->b:Ln/h1;

    invoke-virtual {p0}, Ln/h1;->i()V

    return-void

    :pswitch_0
    iget-object p0, p0, Ln/l1;->b:Ln/h1;

    invoke-virtual {p0}, Ln/h1;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
