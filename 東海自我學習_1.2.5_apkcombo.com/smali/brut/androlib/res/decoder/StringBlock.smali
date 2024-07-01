.class public Lbrut/androlib/res/decoder/StringBlock;
.super Ljava/lang/Object;


# static fields
.field private static final CHUNK_TYPE:I = 0x1c0001

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_FLAG:I = 0x100


# instance fields
.field private m_isUTF8:Z

.field private m_stringOffsets:[I

.field private m_strings:[B

.field private m_styleOffsets:[I

.field private m_styles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lbrut/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lbrut/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-class v0, Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbrut/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeString(II)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbrut/androlib/res/decoder/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    goto :goto_0

    :cond_0
    sget-object v0, Lbrut/androlib/res/decoder/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

    :goto_0
    iget-object v1, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v1, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lbrut/androlib/res/decoder/StringBlock;->LOGGER:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static final getShort([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static final getShort([II)I
    .locals 1

    div-int/lit8 v0, p1, 0x4

    aget p0, p0, v0

    rem-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    :cond_0
    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private getStyle(I)[I
    .locals 7

    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lbrut/androlib/res/decoder/StringBlock;->m_styles:[I

    if-eqz v2, :cond_5

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_3

    :cond_0
    aget p1, v0, p1

    div-int/lit8 p1, p1, 0x4

    const/4 v0, 0x0

    move v2, p1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lbrut/androlib/res/decoder/StringBlock;->m_styles:[I

    array-length v5, v4

    const/4 v6, -0x1

    if-ge v2, v5, :cond_2

    aget v4, v4, v2

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    rem-int/lit8 v2, v3, 0x3

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    new-array v1, v3, [I

    :goto_2
    iget-object v2, p0, Lbrut/androlib/res/decoder/StringBlock;->m_styles:[I

    array-length v3, v2

    if-ge p1, v3, :cond_5

    aget v3, v2, p1

    if-ne v3, v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, p1, 0x1

    aget p1, v2, p1

    aput p1, v1, v0

    move v0, v3

    move p1, v4

    goto :goto_2

    :cond_5
    :goto_3
    return-object v1
.end method

.method private static final getVarint([BI)[I
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, 0x7f

    const/4 v4, 0x2

    if-nez v1, :cond_1

    new-array p0, v4, [I

    aput v0, p0, v2

    aput v3, p0, v3

    return-object p0

    :cond_1
    new-array v1, v4, [I

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    aput p0, v1, v2

    aput v4, v1, v3

    return-object v1
.end method

.method private outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 7

    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    const/4 p3, 0x1

    move v4, v1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    const/16 v5, 0x3d

    add-int/2addr v4, p3

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, p3

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :goto_1
    invoke-static {v5}, Lbrut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_2
    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static read(Lbrut/util/ExtDataInput;)Lbrut/androlib/res/decoder/StringBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x1c0001

    invoke-virtual {p0, v0}, Lbrut/util/ExtDataInput;->skipCheckInt(I)V

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v5

    new-instance v6, Lbrut/androlib/res/decoder/StringBlock;

    invoke-direct {v6}, Lbrut/androlib/res/decoder/StringBlock;-><init>()V

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v6, Lbrut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    invoke-virtual {p0, v1}, Lbrut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v6, Lbrut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lbrut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v6, Lbrut/androlib/res/decoder/StringBlock;->m_styleOffsets:[I

    :cond_1
    if-nez v5, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    sub-int/2addr v1, v4

    rem-int/lit8 v2, v1, 0x4

    const-string v3, ")."

    if-nez v2, :cond_5

    new-array v1, v1, [B

    iput-object v1, v6, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    iget-object v1, v6, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-virtual {p0, v1}, Lbrut/util/ExtDataInput;->readFully([B)V

    if-eqz v5, :cond_4

    sub-int/2addr v0, v5

    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_3

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lbrut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object p0

    iput-object p0, v6, Lbrut/androlib/res/decoder/StringBlock;->m_styles:[I

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Style data size is not multiple of 4 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object v6

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String data size is not multiple of 4 ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public find(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lbrut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    array-length v4, v3

    if-eq v2, v4, :cond_5

    aget v3, v3, v2

    iget-object v4, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v4, v3}, Lbrut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_3

    :cond_1
    move v5, v3

    const/4 v3, 0x0

    :goto_1
    if-eq v3, v4, :cond_3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v7, v5}, Lbrut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v3, v4, :cond_4

    return v2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHTML(I)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getStyle(I)[I

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lbrut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_1
    array-length v9, p1

    if-eq v7, v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    aget v10, p1, v9

    if-ne v10, v6, :cond_2

    goto :goto_2

    :cond_2
    if-eq v8, v6, :cond_3

    add-int/lit8 v10, v8, 0x1

    aget v10, p1, v10

    aget v9, p1, v9

    if-le v10, v9, :cond_4

    :cond_3
    move v8, v7

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    :cond_5
    if-eq v8, v6, :cond_6

    add-int/lit8 v7, v8, 0x1

    aget v7, p1, v7

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    const/4 v9, 0x1

    sub-int/2addr v4, v9

    :goto_4
    if-ltz v4, :cond_9

    aget v10, v2, v4

    add-int/lit8 v11, v10, 0x2

    aget v11, p1, v11

    if-lt v11, v7, :cond_7

    goto :goto_5

    :cond_7
    if-gt v5, v11, :cond_8

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbrut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v11

    :cond_8
    aget v10, p1, v10

    invoke-virtual {p0, v10}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v1, v9}, Lbrut/androlib/res/decoder/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    if-ge v5, v7, :cond_a

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbrut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    :cond_a
    if-ne v8, v6, :cond_b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    aget v7, p1, v8

    invoke-virtual {p0, v7}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1, v3}, Lbrut/androlib/res/decoder/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v7, v8, 0x1

    aput v6, p1, v7

    add-int/lit8 v6, v4, 0x1

    aput v8, v2, v4

    move v4, v6

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget p1, v0, p1

    iget-boolean v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_isUTF8:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getShort([BI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getVarint([BI)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/2addr p1, v0

    iget-object v0, p0, Lbrut/androlib/res/decoder/StringBlock;->m_strings:[B

    invoke-static {v0, p1}, Lbrut/androlib/res/decoder/StringBlock;->getVarint([BI)[I

    move-result-object v0

    aget v1, v0, v1

    add-int/2addr p1, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lbrut/androlib/res/decoder/StringBlock;->decodeString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
