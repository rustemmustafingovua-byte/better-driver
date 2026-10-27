.class public final Lsc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc/f;


# static fields
.field public static final b:Lsc/p;

.field public static final c:Lsc/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lsc/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsc/p;-><init>(I)V

    sput-object v0, Lsc/p;->b:Lsc/p;

    new-instance v0, Lsc/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsc/p;-><init>(I)V

    sput-object v0, Lsc/p;->c:Lsc/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsc/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lsc/p;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SharedHttp.getter \u043d\u0435 \u0437\u0430\u0434\u0430\u043d"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1, p2}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
