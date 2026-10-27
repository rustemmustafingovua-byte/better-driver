.class public abstract Ln/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/r;

.field public static final b:Lc2/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ln/r;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Ln/r;-><init>(FFFF)V

    sput-object v0, Ln/w;->a:Ln/r;

    new-instance v0, Ln/r;

    invoke-direct {v0, v2, v2, v3, v4}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v1, v2, v4, v4}, Ln/r;-><init>(FFFF)V

    new-instance v0, Lc2/c0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    sput-object v0, Ln/w;->b:Lc2/c0;

    return-void
.end method
