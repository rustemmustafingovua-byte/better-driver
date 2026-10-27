.class public final Lp2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc2/c0;

.field public static final b:Lc2/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/c0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    sput-object v0, Lp2/h0;->a:Lc2/c0;

    new-instance v0, Lc2/c0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    sput-object v0, Lp2/h0;->b:Lc2/c0;

    return-void
.end method
