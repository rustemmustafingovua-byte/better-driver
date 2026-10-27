.class public final Le3/i;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final m:Le3/i;

.field public static final n:Le3/i;

.field public static final o:Le3/i;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Le3/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le3/i;-><init>(II)V

    sput-object v0, Le3/i;->m:Le3/i;

    new-instance v0, Le3/i;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le3/i;-><init>(II)V

    sput-object v0, Le3/i;->n:Le3/i;

    new-instance v0, Le3/i;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Le3/i;-><init>(II)V

    sput-object v0, Le3/i;->o:Le3/i;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Le3/i;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Le3/i;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
