.class public final Lu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lu/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(ILc2/t0;[I[I)V
    .locals 0

    iget p0, p0, Lu/c;->a:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-static {p3, p4, p0}, Lu/h;->b([I[IZ)V

    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-static {p1, p3, p4, p0}, Lu/h;->c(I[I[IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lu/c;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "Arrangement#Top"

    return-object p0

    :pswitch_0
    const-string p0, "Arrangement#Bottom"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
