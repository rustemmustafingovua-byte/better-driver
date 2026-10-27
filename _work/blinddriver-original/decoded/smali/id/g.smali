.class public final synthetic Lid/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li9/e;


# direct methods
.method public synthetic constructor <init>(ILi9/e;)V
    .locals 0

    iput p1, p0, Lid/g;->a:I

    iput-object p2, p0, Lid/g;->b:Li9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lid/g;->a:I

    iget-object p0, p0, Lid/g;->b:Li9/e;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lsc/u0;

    invoke-virtual {p0, p1, p2}, Lsc/u0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_0
    check-cast p0, Lsc/u0;

    invoke-virtual {p0, p1, p2}, Lsc/u0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_1
    check-cast p0, Lb0/u2;

    invoke-virtual {p0, p1, p2}, Lb0/u2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
