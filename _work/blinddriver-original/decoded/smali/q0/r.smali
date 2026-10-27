.class public abstract Lq0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/r;

.field public static final b:Ln/r;

.field public static final c:Ln/r;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ln/r;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e19999a    # 0.15f

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v2, v4, v5}, Ln/r;-><init>(FFFF)V

    sput-object v0, Lq0/r;->a:Ln/r;

    new-instance v0, Ln/r;

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3dcccccd    # 0.1f

    const v7, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v7, v4, v5, v3}, Ln/r;-><init>(FFFF)V

    sput-object v0, Lq0/r;->b:Ln/r;

    new-instance v0, Ln/r;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v4, v2, v3, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v2, v2, v1, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v2, v2, v3, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v1, v2, v2, v3}, Ln/r;-><init>(FFFF)V

    sput-object v0, Lq0/r;->c:Ln/r;

    new-instance v0, Ln/r;

    invoke-direct {v0, v6, v2, v3, v3}, Ln/r;-><init>(FFFF)V

    new-instance v0, Ln/r;

    invoke-direct {v0, v2, v2, v2, v3}, Ln/r;-><init>(FFFF)V

    return-void
.end method
