.class public final Ld1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ld1/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ld1/v;
    .locals 4

    if-nez p1, :cond_0

    const-class p1, Ld1/u;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ld1/v;

    invoke-direct {p0}, Ld1/v;-><init>()V

    return-object p0

    :cond_1
    sget-object v1, Lv0/h;->m:Lv0/h;

    invoke-virtual {v1}, Lv0/h;->e()Lv0/e;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv0/e;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ld1/v;

    invoke-virtual {v1}, Lv0/e;->c()Lv0/b;

    move-result-object p1

    invoke-direct {p0, p1}, Ld1/v;-><init>(Lv0/b;)V

    return-object p0
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Ld1/u;->a:I

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Landroidx/fragment/app/k0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/k0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p0}, Ld1/u;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ld1/v;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ld1/u;->a:I

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Landroidx/fragment/app/k0;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/k0;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0

    .line 4
    :pswitch_0
    invoke-static {p1, p2}, Ld1/u;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ld1/v;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ld1/u;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/fragment/app/k0;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Ld1/v;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
