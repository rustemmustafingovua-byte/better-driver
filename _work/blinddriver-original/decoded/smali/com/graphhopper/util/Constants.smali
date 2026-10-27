.class public Lcom/graphhopper/util/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_DATE:Ljava/lang/String;

.field public static final GIT_INFO:Lcom/graphhopper/util/GitInfo;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JRE_IS_MINIMUM_JAVA9:Z

.field private static final JVM_MAJOR_VERSION:I

.field private static final JVM_MINOR_VERSION:I

.field public static final JVM_SPEC_VERSION:Ljava/lang/String;

.field public static final LINUX:Z

.field public static final MAC_OS_X:Z

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final SNAPSHOT:Z

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_EDGE:I = 0x18

.field public static final VERSION_EM:I = 0x4

.field public static final VERSION_GEOMETRY:I = 0x7

.field public static final VERSION_KV_STORAGE:I = 0x2

.field public static final VERSION_LOCATION_IDX:I = 0x5

.field public static final VERSION_NODE:I = 0x9

.field public static final VERSION_NODE_CH:I = 0x0

.field public static final VERSION_SHORTCUT:I = 0x9

.field public static final VERSION_TURN_COSTS:I

.field public static final WINDOWS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v1, Lcom/graphhopper/GraphHopper;

    const-string v2, "0.0"

    const-string v3, "GraphHopper Initialization WARNING: unexpected git info: "

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->JAVA_VERSION:Ljava/lang/String;

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->OS_NAME:Ljava/lang/String;

    const-string v4, "Linux"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/graphhopper/util/Constants;->LINUX:Z

    const-string v4, "Windows"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/graphhopper/util/Constants;->WINDOWS:Z

    const-string v4, "Mac OS X"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/graphhopper/util/Constants;->MAC_OS_X:Z

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->OS_ARCH:Ljava/lang/String;

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->OS_VERSION:Ljava/lang/String;

    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->JAVA_VENDOR:Ljava/lang/String;

    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/Constants;->JVM_SPEC_VERSION:Ljava/lang/String;

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/graphhopper/util/Constants;->JVM_MAJOR_VERSION:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/graphhopper/util/Constants;->JVM_MINOR_VERSION:I

    goto :goto_0

    :cond_0
    sput v6, Lcom/graphhopper/util/Constants;->JVM_MINOR_VERSION:I

    :goto_0
    const/4 v4, 0x1

    if-gt v0, v4, :cond_2

    if-ne v0, v4, :cond_1

    sget v0, Lcom/graphhopper/util/Constants;->JVM_MINOR_VERSION:I

    const/16 v5, 0x9

    if-lt v0, v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v4

    :goto_2
    sput-boolean v0, Lcom/graphhopper/util/Constants;->JRE_IS_MINIMUM_JAVA9:Z

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "version"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    sget-object v7, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v0, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->readFile(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GraphHopper Initialization ERROR: cannot read version!? "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v7, "${project.version}"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sput-object v2, Lcom/graphhopper/util/Constants;->VERSION:Ljava/lang/String;

    sput-boolean v4, Lcom/graphhopper/util/Constants;->SNAPSHOT:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "GraphHopper Initialization WARNING: maven did not preprocess the version file! Do not use the jar for a release!"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sput-object v2, Lcom/graphhopper/util/Constants;->VERSION:Ljava/lang/String;

    sput-boolean v4, Lcom/graphhopper/util/Constants;->SNAPSHOT:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "GraphHopper Initialization WARNING: cannot get version!?"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    if-ltz v5, :cond_5

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v0

    :goto_4
    invoke-static {v0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "-snapshot"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/graphhopper/util/Constants;->SNAPSHOT:Z

    sput-object v2, Lcom/graphhopper/util/Constants;->VERSION:Ljava/lang/String;

    :goto_5
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "builddate"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v5, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->readFile(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    const-string v0, ""

    :goto_6
    sput-object v0, Lcom/graphhopper/util/Constants;->BUILD_DATE:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "gitinfo"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v5, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->readFile(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x6

    if-eq v2, v5, :cond_6

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :catch_2
    :goto_7
    move-object v1, v0

    goto :goto_8

    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v2, :cond_7

    goto :goto_7

    :catch_3
    :cond_7
    :goto_8
    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    new-instance v5, Lcom/graphhopper/util/GitInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-direct/range {v5 .. v10}, Lcom/graphhopper/util/GitInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v5

    :goto_9
    sput-object v0, Lcom/graphhopper/util/Constants;->GIT_INFO:Lcom/graphhopper/util/GitInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMajorVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/graphhopper/util/Constants;->VERSION:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot extract major version from version "

    invoke-static {v2, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getVersions()Ljava/lang/String;
    .locals 1

    const-string v0, "9,24,7,5,2,9"

    return-object v0
.end method
