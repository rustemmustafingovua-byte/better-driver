.class public final Landroidx/fragment/app/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/z0;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/z0;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lg4/b;

    invoke-direct {p0}, Lg4/b;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/fragment/app/a1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/a1;-><init>(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
