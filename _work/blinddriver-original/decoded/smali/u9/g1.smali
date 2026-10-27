.class public final Lu9/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/g0;
.implements Lu9/j;


# static fields
.field public static final l:Lu9/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu9/g1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu9/g1;->l:Lu9/g1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getParent()Lu9/v0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
