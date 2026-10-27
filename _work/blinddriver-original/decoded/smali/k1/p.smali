.class public final Lk1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll1/c;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1, v1, v1}, Ll1/c;-><init>(FFFF)V

    sput-object v0, Lk1/p;->a:Ll1/c;

    return-void
.end method
