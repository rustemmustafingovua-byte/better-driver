.class public final Lf2/e2;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final m:Lf2/e2;

.field public static final n:Lf2/e2;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lf2/e2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf2/e2;-><init>(II)V

    sput-object v0, Lf2/e2;->m:Lf2/e2;

    new-instance v0, Lf2/e2;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf2/e2;-><init>(II)V

    sput-object v0, Lf2/e2;->n:Lf2/e2;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf2/e2;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lf2/e2;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
