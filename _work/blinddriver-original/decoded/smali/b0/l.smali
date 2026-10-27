.class public final Lb0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final l:Lb0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb0/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb0/l;->l:Lb0/l;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const p0, 0x4dffeb3b    # 5.3670077E8f

    invoke-static {p0}, Lm1/v;->c(I)J

    move-result-wide v0

    new-instance p0, Lm1/p;

    invoke-direct {p0, v0, v1}, Lm1/p;-><init>(J)V

    return-object p0
.end method
