.class public final synthetic Led/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/j;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-lt p1, v0, :cond_4

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x80

    if-gt v0, p1, :cond_0

    const/16 v0, 0xa0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x200e

    if-gt v0, p1, :cond_1

    const/16 v0, 0x2010

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2028

    if-gt v0, p1, :cond_2

    const/16 v0, 0x202f

    if-ge p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2066

    if-gt v0, p1, :cond_3

    const/16 v0, 0x206a

    if-ge p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0xfeff

    if-eq p1, v0, :cond_4

    const v0, 0xd800

    if-gt v0, p1, :cond_5

    const v0, 0xe000

    if-ge p1, v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p0, p0, Led/j;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void
.end method
