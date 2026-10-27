.class public final Le2/f;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final m:Le2/f;

.field public static final n:Le2/f;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le2/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le2/f;-><init>(II)V

    sput-object v0, Le2/f;->m:Le2/f;

    new-instance v0, Le2/f;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le2/f;-><init>(II)V

    sput-object v0, Le2/f;->n:Le2/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le2/f;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Le2/f;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Le2/g0;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Le2/g0;-><init>(I)V

    return-object p0

    :pswitch_0
    new-instance p0, Le2/g0;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Le2/g0;-><init>(I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
