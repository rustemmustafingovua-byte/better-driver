.class public final Le2/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:Le2/n1;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/n1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/n1;-><init>(I)V

    sput-object v0, Le2/n1;->b:Le2/n1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le2/n1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Le2/n1;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Le2/g0;

    check-cast p2, Le2/g0;

    iget p0, p1, Le2/g0;->B:I

    iget v0, p2, Le2/g0;->B:I

    invoke-static {p0, v0}, Lj9/n;->h(II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Le2/g0;

    check-cast p2, Le2/g0;

    iget p0, p2, Le2/g0;->B:I

    iget v0, p1, Le2/g0;->B:I

    invoke-static {p0, v0}, Lj9/n;->h(II)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
