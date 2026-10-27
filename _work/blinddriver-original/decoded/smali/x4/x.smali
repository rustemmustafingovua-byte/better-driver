.class public final Lx4/x;
.super Ll9/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lx4/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lx4/x;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_0
    const-string p0, "IN_PROGRESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
