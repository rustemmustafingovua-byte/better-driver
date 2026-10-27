.class public abstract Lg6/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lg6/r0;->a:Ljava/util/HashSet;

    const-class v10, Ljava/math/BigDecimal;

    const-class v11, Ljava/math/BigInteger;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Byte;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Character;

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/lang/Long;

    const-class v7, Ljava/lang/Float;

    const-class v8, Ljava/lang/Double;

    const-class v9, Ljava/lang/Number;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sget-object v3, Lg6/r0;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
